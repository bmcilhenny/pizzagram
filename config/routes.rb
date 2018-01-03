Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
        post '/login', to: 'users#login', as: 'login'
      resources :pizzas
      resources :comments
    end
  end
end
