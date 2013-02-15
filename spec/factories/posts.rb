# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
		sequence(:title) { |n| "Title #{n}" }
    content { Faker::Lorem.sentence }
    association :user
		association :category
  end
end
