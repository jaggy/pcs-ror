# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :conference do
    is_read 0
    association :user
    association :message
  end
end
