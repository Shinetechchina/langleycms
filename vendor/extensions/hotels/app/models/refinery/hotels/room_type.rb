module Refinery
  module Hotels
    class RoomType < Refinery::Core::BaseModel
            
      attr_accessible :name, :contain_num, :price, :level, :left_rooms,:sum_rooms, :description, :position
      acts_as_indexed :fields => [:name, :level, :description]

      belongs_to :hotel, :foreign_key => 'hotel_id'

      validates :name, :presence => true, :uniqueness => true

      attr_accessible :hotel_id




    end
  end
end
