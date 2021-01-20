Rails.application.routes.draw do

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      # custom routes
      post 'authenticate', to: 'authentication#authenticate'
      # resources is for models only
      resources :trips, only: [:index, :show]
      resources :users, only: [:create]
      resources :followings, only: [:create]
      # custom routes
      get 'get_following', to: 'followings#get_following'
    end
  end

end
