
puts '[boot] routes.rb - before SportDbAdmin::Engine.routes.draw'

SportDbAdmin::Engine.routes.draw do

  puts '[boot] routes.rb - enter SportDbAdmin::Engine.routes.draw'

  get 'about',    :to => 'pages#about'


  get 'clubs',          :to => 'teams#index_clubs',          :as => 'clubs'
  get 'national_teams', :to => 'teams#index_national_teams', :as => 'national_teams'

  resources :sources
  resources :countries
  resources :regions
  resources :rounds
  resources :events
  resources :teams
  resources :games do
    get 'past',   :on => :collection
  end

  # NB: optional routes for market plugin/addon
  if defined?( SportDb::Market )
    resources :services
    resources :event_quotes
    resources :group_quotes
    resources :quotes
  end


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


  ###################
  #  - nb: event key must contain dots
  #  todo/todo:
  #
  #  todo: allow multiple shortcuts for years e.g.  de1 -> bundesliga current/last season
  #       euro2012 or euro12  12->2012    de12 -> bundesliga 11/12
  #
  # shortcut -- 3+ letters  (w/ digits w/ dots) - assume shortcut for event
  #
  # NB: for now -> must end with   .2012 or .2012_13 etc.
  get '/:key', :to => 'events#shortcut', :as => :short_event_worker, :key => /.+\.[0-9_]+/

  ####
  # shortcut -- 2 lower case letters - assume shortcut for country
  ##  note: add eng, wal, sco, nir - three letter country codes
  get '/:key', :to => 'countries#shortcut', :as => :short_country_worker, :key => /([a-z]{2})|eng|wal|sco|nir/

  ####
  # shortcut -- 3+ lower case letters (w/o digits) - assume shortcut for team
  #  nb: do NOT use team keys like az with only two lower case letters; always use at least three minimum
  #  todo: allow numbers in key too
  get '/:key', :to => 'teams#shortcut', :as => :short_team_worker, :key => /[a-z]{3,}/





  root :to => 'games#index'

  puts '[boot] routes.rb - leave SportDbAdmin::Engine.routes.draw'

end

puts '[boot] routes.rb - after SportDbAdmin::Engine.routes.draw'
