Rails.application.routes.draw do

  resources :darkprices
  root 'welcome#index'
  resources :items
  resources :users
  resources :colors
  resources :logos
  resources :prices
  resources :darkprices
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
