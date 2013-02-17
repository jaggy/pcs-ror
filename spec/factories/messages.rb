# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :message do
    message { Faker::Lorem.sentence }
    is_read false
		association :sender, :factory => :user
		association :recipient, :factory => :user
  end
end
