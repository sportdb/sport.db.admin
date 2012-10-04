Sportdb::Application.routes.draw do

  get "pages/index"

  get "pages/about"

  root :to => 'pages#index'

end
