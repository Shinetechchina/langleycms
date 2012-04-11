class Trip < ActiveRecord::Base
  has_many :room_types

  validates :have_num,          :numericality => {:greater_than_or_equal_to => 0}
end
