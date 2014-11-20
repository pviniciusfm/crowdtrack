# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :trip_checkpoint, :class => 'TripCheckpoints' do
    trip 1
    latitude "9.99"
    longitude "9.99"
  end
end
