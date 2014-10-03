# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :route do
    label "MyString"
    company_id 1
    initial_checkpoint_id 1
    final_checkpoint_id 1
  end
end
