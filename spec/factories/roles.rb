# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :role do
    name { Faker::Name.title }
    description { Faker::Lorem.sentence }
  end
end
