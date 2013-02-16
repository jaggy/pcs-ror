# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :message do
    message "MyText"
    is_read false
    sender nil
    recipient nil
  end
end
