Rails.application.routes.draw do
  namespace :api, :defaults => {:format => :json} do
    namespace :v1 do
      get '/create/:username/:password/:repeat', to: 'users#create'
      get '/login/:username/:password', to: 'sessions#create'
      get '/setucat/:date/:progress/:user/:category', to: 'user_categories#set_user_category'
      get '/getprogress/:username/:date', to: 'users#pull_progress'
      get '/getcategories/:username', to: 'categories#index'
      get '/updategoals/:username/:net/:look/:cod/:rel', to: 'categories#update_goals'
    end
  end
end
