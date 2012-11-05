module Refinery
  module Hotels
    class RoomTypesController < ::ApplicationController

      before_filter :find_all_room_types
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @room_type in the line below:
        present(@page)
      end

      def show
        @room_type = RoomType.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @room_type in the line below:
        present(@page)
      end

    protected

      def find_all_room_types
        @room_types = RoomType.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/room_types").first
      end

    end
  end
end
