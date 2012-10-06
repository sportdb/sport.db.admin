Sportdb::Application.routes.draw do

  get "pages/index"
  get "pages/about"

  
  resources :events
  resources :teams
  resources :games do
    get 'past',   :on => :collection
  end


  root :to => 'games#index'

end
