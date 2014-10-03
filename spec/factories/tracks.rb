# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :track do
    route_id 1
    geo_coordinate "9.99"
    status 1
  end
end
