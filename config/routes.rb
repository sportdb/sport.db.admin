
puts '[boot] routes.rb - before Application.routes.draw'


Sportdbhost::Application.routes.draw do

  puts '[boot] routes.rb - enter Application.routes.draw'

  mount About::Server,     :at => '/sysinfo'
  mount DbBrowser::Server, :at => '/browse'

  ###
  # mount sinatra app (bundled w/ sportdb-service gem) for json api service

  # todo: add  JSON API link to layout

  get '/api' => redirect('/api/v1')
  mount SportDb::Service::Server, :at => '/api/v1'  # NB: make sure to require 'sportdb-service'

  ## mount sinatra app (bundled w/ logutils gem)
  mount LogDb::Server, :at => '/logs'    # NB: make sure to require 'logutils/server'


  mount SportDbAdmin::Engine, :at => '/'  # mount a root possible?

  puts '[boot] routes.rb - leave Application.routes.draw'

end

puts '[boot] routes.rb - after Application.routes.draw'
