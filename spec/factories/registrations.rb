# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :registration do
    name "MyString"
    email "MyString"
    amount 1
    currency "MyString"
    card "MyString"
  end
end
