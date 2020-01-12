Rails.application.routes.draw do
  resources :equipment_histories
  resources :equipment
  resources :zone_histories
  resources :fertilizer_histories
  resources :harvest_histories
  resources :water_histories
  resources :fertilizers
  resources :zones
  resources :seeds
  resources :suppliers
  resources :farms
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
