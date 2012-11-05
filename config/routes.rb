Langleycms::Application.routes.draw do

  namespace :refinery do
    namespace :blog do
      namespace :admin do
      end
    end
  end

  resources :customs

  resources :rooms

  resources :room_types do
    collection do
      get 'search'
    end

    get 'sort_by/:sort_option', :to=>'room_types#sort_by'
  end

  resources :people

  resources :business_days

  resources :bookings


  #namespace :refinery do
  #  match 'last-minute/:sort_option'=>'pages#sort_by', :as=>'pages_sort_by', :via=>'get'
  #end
  #match 'last-minute/:sort_option'=>'room_types#index', :as=>'sort_by'

  # This line mounts Refinery's routes at the root of your application.
  # This means, any requests to the root URL of your application will go to Refinery::PagesController#home.
  # If you would like to change where this extension is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Refinery relies on it being the default of "refinery"
  #mount the engine(RefineryCMS) into an application
  mount Refinery::Core::Engine, :at => '/'
  #root :to => 'bookings#show'
end
