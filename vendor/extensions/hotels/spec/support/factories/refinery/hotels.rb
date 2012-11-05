FactoryGirl.define do
  factory :hotel, :class => Refinery::Hotels::Hotel do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

