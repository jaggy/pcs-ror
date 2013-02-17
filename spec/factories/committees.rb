# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :committee do
    name { Faker::Company.name }
    description { Faker::Lorem.sentence }
    association :user
  end
end
