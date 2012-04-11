class RoomType < ActiveRecord::Base
  belongs_to :hotel
  belongs_to :trip
  has_many :rooms

  validates :number_of_people,  :numericality => {:greater_than_or_equal_to => 1}
  validates :have_num,          :numericality => {:greater_than_or_equal_to => 0}
  validates :level,             :presence => {:message => 'must define the room level'}
end
