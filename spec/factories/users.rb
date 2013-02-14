# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
		sequence(:username) { |n| "username#{n}" }
    password "qwerty1234"
		password_confirmation "qwerty1234"
    first_name { Faker::Name.first_name }
    middle_name { Faker::Name.last_name }
    last_name { Faker::Name.last_name }
    email { |u| Faker::Internet.email(u.username) }
    image { |u| "#{u.username}.jpg" }
    status 1
    association :role
  end
end
