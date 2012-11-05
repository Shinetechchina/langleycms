Refinery::Core::Engine.routes.append do

  # Frontend routes

  get 'hotels/sort/:sort_option', :to=>'hotels/hotels#index'

  namespace :hotels do
    resources :hotels, :path => '', :only => [:index, :show, :sort_by] do
      resources :room_types, :only => [:index, :show]
    end
  end

  # Admin routes
  namespace :hotels, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :hotels, :except => :show do
        #resources :room_types
        collection do
          post :update_positions
        end
      end
    end
  end


  # Frontend routes
  namespace :hotels do
    resources :room_types, :only => [:index, :show]
  end

  # Admin routes
  namespace :hotels, :path => '' do
    namespace :admin, :path => 'refinery/hotels' do
      resources :room_types, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
