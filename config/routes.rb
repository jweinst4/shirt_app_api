Rails.application.routes.draw do
  resources :colors
  root 'welcome#index'
  resources :items
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
