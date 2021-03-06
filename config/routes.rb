Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :create, :update]
      resources :journals, only: [:index, :show, :create, :update]
      resources :postcards, only: [:index, :show, :create]
    end
  end
end
