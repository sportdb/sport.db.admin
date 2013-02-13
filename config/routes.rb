
Sportdb::Application.routes.draw do
  
  match 'about',    :to => 'pages#about'
  match 'logs',     :to => 'logs#index'
  
  resources :countries
  resources :rounds
  resources :events
  resources :teams
  resources :games do
    get 'past',   :on => :collection
  end

  root :to => 'games#index'

end
