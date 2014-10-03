# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :notification do
    user_id 1
    geo_coordinate "9.99"
    distance 1
    route_id 1
  end
end
