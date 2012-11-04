Sportdb::Application.routes.draw do
  
  match 'about',    :to => 'pages#about'
  
  resources :countries
  resources :rounds
  resources :events
  resources :teams
  resources :games do
    get 'past',   :on => :collection
  end

  root :to => 'games#index'

end
