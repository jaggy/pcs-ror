# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :category do
    sequence(:name) { |n| "Category #{n}" }
    description { Faker::Lorem.sentence }
  end
end
