# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :phrase do
    owner_id 1
    speaker_id 1
    text "MyText"
    spoken_on "2013-02-12 22:41:50"
  end
end
