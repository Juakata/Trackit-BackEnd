Rails.application.routes.draw do
  namespace :api, :defaults => {:format => :json} do
    namespace :v1 do
      get '/create/:username/:password/:repeat', to: 'users#create'
      get '/login/:username/:password', to: 'sessions#create'
      get '/setucat/:date/:progress/:user/:category', to: 'user_categories#setUserCategory'
      get '/getprogress/:username/:date', to: 'users#get_progress'
    end
  end
end
