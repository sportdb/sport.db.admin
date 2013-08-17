
puts "[boot] routes.rb - before Application.routes.draw"


Sportdbhost::Application.routes.draw do

  puts "[boot] routes.rb - enter Application.routes.draw"

  ###
  # mount sinatra app (bundled w/ sportdb-service gem) for json api service

  # todo: add  JSON API link to layout

  match '/api' => redirect('/api/v1')
  mount SportDB::Service::Server, :at => '/api/v1'  # NB: make sure to require 'sportdb-service'

  ## mount sinatra app (bundled w/ logutils gem)
  mount LogDb::Server, :at => '/logs'    # NB: make sure to require 'logutils/server'

  puts "[boot] routes.rb - leave Application.routes.draw"

end

puts "[boot] routes.rb - after Application.routes.draw"
