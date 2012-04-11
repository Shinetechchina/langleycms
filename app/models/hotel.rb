class Hotel < ActiveRecord::Base
  has_many :business_days
  has_many :room_types

  validates :name, :presence => true
  validates :location, :presence =>  true

end
