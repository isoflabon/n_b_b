FactoryGirl.define do
  factory :reply do
    sequence(:content) { |n| "comment#{n}"}
    sequence(:post_id) { |n| "post#{n}"}

    trait :comment_id do
      post_id "100"
    end
  end
end
