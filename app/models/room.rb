class Room < ActiveRecord::Base
  belongs_to :room_type

  validates :number_of_people,:room_num,    :presence => true
  validates_uniqueness_of :room_num,        :scope => :hotel_id

end
