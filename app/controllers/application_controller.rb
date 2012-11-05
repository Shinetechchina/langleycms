class ApplicationController < ActionController::Base

  #caches_page :articles
  #caches_action :show

  protect_from_forgery
end
