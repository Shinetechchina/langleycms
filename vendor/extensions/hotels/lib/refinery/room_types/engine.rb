module Refinery
  module Hotels
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::Hotels

      engine_name :refinery_hotels

      initializer "register refinerycms_room_types plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "room_types"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.hotels_admin_room_types_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/hotels/room_type',
            :title => 'name'
          }
          plugin.menu_match = %r{refinery/hotels/room_types(/.*)?$}
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::RoomTypes)
      end
    end
  end
end
