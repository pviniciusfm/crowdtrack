# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :route_checkpoint, :class => 'RouteCheckpoints' do
    route_id 1
    checkpoint_id 1
  end
end
