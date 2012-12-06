CoinsApp::Application.routes.draw do
  get "user/new"

  get "coin/index"

  root :to => "coin#index"
  
  resources :sessions, only: [:new, :create, :destroy]
  
  match '/signin', to: 'sessions#new'
   
  resources :coin
  resources :home
end