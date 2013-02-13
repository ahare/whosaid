require "faker"

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

end
