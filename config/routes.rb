Rails.application.routes.draw do

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      post 'authenticate', to: 'authentication#authenticate'
      # resources is for models only
      resources :trips, only: [:index]
      resources :users, only: [:create]
      resources :followings, only: [:create]
    end
  end

end
