# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :shared_info do
    capacity_rank "MyString"
    traffic_rank "MyString"
    comments "MyString"
    trip nil
    user nil
  end
end
