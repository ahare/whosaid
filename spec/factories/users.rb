FactoryGirl.define do
  factory :user do
    sequence(:first_name) { |n| "first_#{n}"}
    sequence(:last_name) { |n| "last_#{n}"}
    email { "#{first_name}.#{last_name}@example.com".downcase }
    sequence(:password) { |n| "password#{n}" }
    password_confirmation { password }
  end
end
