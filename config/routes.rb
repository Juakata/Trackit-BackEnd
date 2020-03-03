Rails.application.routes.draw do
  namespace :api, :defaults => {:format => :json} do
    namespace :v1 do
      get '/create/:username/:password/:repeat', to: 'users#create'
      get '/login/:username/:password', to: 'sessions#create'
    end
  end
end
