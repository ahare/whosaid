# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :speaker do
    owner_id 1
    name "MyString"
    birthday "2013-02-12"
  end
end
