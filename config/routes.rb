Rails.application.routes.draw do
  resources :meals, path: 'admin/meals'
  resources :dogs, except: :dog_report, path: 'admin/dogs'
  resources :owners, except: [:owner_report, :big_report], path: 'admin/owners'  
  root 'sessions#welcome'
  resources :users, only: [:new, :create]
  get 'reports/owner_report', to: 'owners#owner_report', as: 'owner_report' 
  get 'reports/big_report', to: 'owners#big_report', as: 'big_report' 
  get 'reports/dog_report', to: 'dogs#dog_report', as: 'dog_report' 
  get 'login', to: 'sessions#login', as: 'login'
  post 'login', to: 'sessions#create'
  delete '/sessions', to: 'sessions#destroy'
  get 'welcome', to: 'sessions#welcome'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
