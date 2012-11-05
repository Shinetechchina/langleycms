module Refinery
  module Hotels
    module Admin
      class HotelsController < ::Refinery::AdminController

        crudify :'refinery/hotels/hotel',
                :title_attribute => 'name', :xhr_paging => true

        before_filter :find_all_room_types

        protected
          def find_all_room_types
            @room_type = Refinery::Hotels::RoomType.all
          end


      end
    end
  end
end
