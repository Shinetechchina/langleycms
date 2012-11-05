module Refinery
  module Hotels
    class Hotel < Refinery::Core::BaseModel
      self.table_name = 'refinery_hotels'
    
      acts_as_indexed :fields => [:name, :location, :description]


      has_many :room_types, :dependent => :destroy, :foreign_key => :hotels_hotel_id


      validates :name, :presence => true, :uniqueness => true

      #attr_accessor :author_name
      #has_many :author, :class => "RoomType"
      #
      #before_save :set_author
      #
      #private
      #def set_author
      #  self.author = User.find_or_create_by_name(author_name)
      #end

    end
  end
end
