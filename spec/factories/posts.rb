# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    title "MyString"
    content "MyText"
    parent nil
    user nil
    discussion nil
    category nil
  end
end
