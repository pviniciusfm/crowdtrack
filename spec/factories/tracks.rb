# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :track do
    trip nil
    latitude "9.99"
    longitude "9.99"
    accuracy "9.99"
  end
end
