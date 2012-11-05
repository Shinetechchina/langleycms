module Refinery
  module Hotels
    class HotelsController < ::ApplicationController

      before_filter :find_all_hotels
      before_filter :find_page

      def index
        @room_types = RoomType.all
        if params[:sort_option]
          sort_option = params[:sort_option]
          @room_types.sort! do |a, b|
             if "price" == sort_option.to_s
              a.price <=> b.price
             end
          end
        end
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @hotel in the line below:
        present(@page)
      end

      def show
        @hotel = Hotel.find(params[:id])
        @room_types = RoomType.all
        @special_hotel_room_types=@room_types.delete_if{|room_type| room_type.hotel_id != @hotel.id}

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @hotel in the line below:
        present(@page)
      end

      def sort_by
        @sort_option = params[:sort_option]
        #@room_types = RoomType.all
        respond_to do |format|
          format.html { redirect_to '/hotels' }
        end
      end

    protected

      def find_all_hotels
        @hotels = Hotel.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/hotels").first
      end

    end
  end
end
