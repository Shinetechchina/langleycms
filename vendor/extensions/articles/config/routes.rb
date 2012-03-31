Refinery::Core::Engine.routes.append do

  # Frontend routes
  namespace :articles do
    resources :articles, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :articles, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :articles, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
