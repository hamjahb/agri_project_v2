Rails.application.routes.draw do
  resources :fertilizers
  resources :zones
  resources :seeds
  resources :suppliers
  resources :farms
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
