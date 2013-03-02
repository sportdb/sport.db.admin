
puts "[debug] routes.rb - before Application.routes.draw"

Sportdb::Application.routes.draw do
  
  puts "[debug] routes.rb - enter Application.routes.draw"
  
  match 'about',    :to => 'pages#about'
  
  ###
  # mount sinatra app (bundled w/ sportdb-service gem) for json api service

  # todo: add  JSON API link to layout

  match '/api' => redirect('/api/v1')
  mount SportDB::Service::Server, :at => '/api/v1'  # NB: make sure to require 'sportdb-service'

  ## mount sinatra app (bundled w/ logutils gem)
  mount LogDb::Server, :at => '/logs'    # NB: make sure to require 'logutils/server'
  
  
  #######################
  # add shortcut routing  (friendly urls)
  #
  #  two letters (e.g. at,mx,us) assume country (fix!!  az for Alkmaar in nl)
  #    - do NOT allow two letter keys
  #
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
  resources :regions
  resources :rounds
  resources :events
  resources :teams
  resources :games do
    get 'past',   :on => :collection
  end

  ###################
  #  - nb: event key must contain dots
  #  todo/todo:
  #
  #  todo: allow multiple shortcuts for years e.g.  de1 -> bundesliga current/last season
  #       euro2012 or euro12  12->2012    de12 -> bundesliga 11/12
  #
  # shortcut -- 3+ letters  (w/ digits w/ dots) - assume shortcut for event
  match '/:key', :to => 'events#shortcut', :as => :short_event_worker,
    :key => /.+\.[0-9_]/   # for now -> must end with   .2012 or .2012_13 etc.

  ####
  # shortcut -- 3+ lower case letters (w/o digits) - assume shortcut for team
  #  -- fix: az - for alkmaar (3 letter)
  match '/:key', :to => 'teams#shortcut', :as => :short_team_worker, :key => /([a-z]{3,})|(az)/


  root :to => 'games#index'
  
   puts "[debug] routes.rb - leave Application.routes.draw"

end

puts "[debug] routes.rb - after Application.routes.draw"
