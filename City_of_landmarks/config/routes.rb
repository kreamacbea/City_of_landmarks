Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "landmarks#index"

  resources :landmarks
  resources :cities
end
