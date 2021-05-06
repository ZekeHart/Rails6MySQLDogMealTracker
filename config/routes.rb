Rails.application.routes.draw do
  resources :meals
  resources :dogs
  resources :owners
  root 'sessions#welcome'
  resources :users, only: [:new, :create]
  get 'owner_report', to: 'owners#owner_report'
  get 'login', to: 'sessions#login', as: 'login'
  post 'login', to: 'sessions#create'
  delete '/sessions', to: 'sessions#destroy'
  get 'welcome', to: 'sessions#welcome'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
