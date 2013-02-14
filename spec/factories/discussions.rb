# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :discussion do
    title "MyString"
    description "MyText"
    committee nil
    user nil
  end
end
