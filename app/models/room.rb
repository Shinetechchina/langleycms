class Room < ActiveRecord::Base
  belongs_to :room_type

  validates :number_of_people,:room_num,    :presence => true #1-10人
  validates_uniqamilueness_of :room_num,        :scope => :hotel_id

end
