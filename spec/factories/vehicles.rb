# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :vehicle do
    description "MyString"
    public_identifier "MyString"
    company nil
  end
end
