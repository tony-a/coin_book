CoinsApp::Application.routes.draw do
  get "coin/index"

  root :to => "coin#index"
  
  
  resources :coin
end