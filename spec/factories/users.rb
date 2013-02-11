# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    username "MyString"
    password "MyString"
    first_name "MyString"
    middle_name "MyString"
    last_name "MyString"
    email "MyString"
    image "MyString"
    status false
    role nil
  end
end
