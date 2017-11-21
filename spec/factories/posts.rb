FactoryGirl.define do
  factory :post do
    sequence(:content) { |n| "content#{n}"}
    sequence(:title) { |n| "title#{n}"}
    sequence(:user_id) { |n| "#{n}"}
  end
end
