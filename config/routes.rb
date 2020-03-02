Rails.application.routes.draw do
  namespace :api, :defaults => {:format => :json} do
    namespace :v1 do
      resources :users
    end
  end
  # namespace :api, :path => "", :constraints => {:subdomain => "api"} do
  #   namespace :v1 do
  #     resources :users
  #   end
  # end
end
