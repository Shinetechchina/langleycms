module Refinery
  module Hotels
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::Hotels

      engine_name :refinery_hotels

      initializer "register refinerycms_hotels plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "hotels"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.hotels_admin_hotels_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/hotels/hotel',
            :title => 'name'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Hotels)
      end
    end
  end
end
