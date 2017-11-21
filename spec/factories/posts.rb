FactoryGirl.define do
  factory :post do
    sequence(:content) { |n| "content#{n}"}
    sequence(:title) { |n| "title#{n}"}
    sequence(:user_id) { |n| "#{n}"}

    trait :toukou_id do
      user_id "100"
    end

  end
end
