# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)

puts "[boot] enter config.ru"

map '/' do

  map '/sysinfo' do
    run About::Server
  end

  map '/browse' do
    run DbBrowser::Server
  end

  run Sportdbhost::Application

end

puts "[boot] leave config.ru"
