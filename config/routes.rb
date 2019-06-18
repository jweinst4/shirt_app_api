Rails.application.routes.draw do
  root 'welcome#index'
  resources :items
  resources :users
  resources :colors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
