
Sportdb::Application.routes.draw do
  
  match 'about',    :to => 'pages#about'
  match 'logs',     :to => 'logs#index'
  
  #######################
  # add shortcut routing  (friendly urls)
  #
  #  two letters (e.g. at,mx,us) assume country (fix!!  az for Alkmaar in nl)
  #    - do NOT allow two letter keys
  #
  #  todo/todo:
  #
  #  todo: allow multiple shortcuts for years e.g.  de1 -> bundesliga current/last season
  #       euro2012 or euro12  12->2012    de12 -> bundesliga 11/12
  #   
  #  short-cut [a-z]+[0-9.\]+ for event
  #   - NOT team keys can NOT contain numbers
  #
  #  more than three letters for now assume
  #   team page
  
  ####
  # shortcut -- 2 lower case letters - assume shortcut for country
  match '/:key', :to => 'countries#shortcut', :as => :short_country_worker, :key => /[a-z]{2}/
  
  
  resources :countries
  resources :rounds
  resources :events
  resources :teams
  resources :games do
    get 'past',   :on => :collection
  end

  ####
  # shortcut -- 3+ lower case letters (w/o digits) - assume shortcut for team
  #  -- fix: az - for alkmaar (3 letter)
  match '/:key', :to => 'teams#shortcut', :as => :short_team_worker, :key => /([a-z]{3,})|(az)/


  root :to => 'games#index'

end
