# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :discussion do
		sequence(:title) { |n| "Discussion #{n}" }
    description { Faker::Lorem.sentence }
		association :committee
		association :user
  end
end
