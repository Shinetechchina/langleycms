
FactoryGirl.define do
  factory :article, :class => Refinery::Articles::Article do
    sequence(:title) { |n| "refinery#{n}" }
  end
end

