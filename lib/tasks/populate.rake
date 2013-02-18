require "faker"
require "populator"

namespace :populate do
  desc "Populate development data"

  task logins: :environment do
    User.create({
                  first_name: "Andrew",
                  last_name: "Hare",
                  email: "andrew@whosaid.com",
                  password: "password",
                  password_confirmation: "password"
    })
    puts "Successfully created logins."
  end

  task phrases: :logins do
    andrew = User.first
    Speaker.populate 3 do |speaker|
      speaker.owner_id = andrew.id
      speaker.name = %w(Mikey Joe Sam Josh Tim Jack)
      Phrase.populate 10 do |phrase|
        phrase.owner_id = andrew.id
        phrase.speaker_id = speaker.id
        phrase.text = Faker::Company::catch_phrase
      end
    end
    puts "Successfully created phrases."
  end

end
