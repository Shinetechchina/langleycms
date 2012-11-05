module Refinery
  module Hotels
    module Admin
      class RoomTypesController < ::Refinery::AdminController

        crudify :'refinery/hotels/room_type',
                :title_attribute => 'name', :xhr_paging => true
        #room_type can crud; xhr_paging(可以进行xhr分页)
      end
    end
  end
end
