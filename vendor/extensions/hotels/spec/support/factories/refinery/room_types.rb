FactoryGirl.define do
  factory :room_type, :class => Refinery::Hotels::RoomType do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

