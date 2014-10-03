# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :checkpoint do
    label "MyString"
    geo_coordinate "9.99"
  end
end
