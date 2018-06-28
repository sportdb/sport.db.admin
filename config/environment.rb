
# Load the rails application
puts "[boot] environment.rb - before require 'application'"
require_relative 'application'
puts "[boot] environment.rb - after require 'application'"


######################
# logging config

# todo/fix: configure logging here - find a better place??
#  use just an initializer??


require 'logutils/activerecord'   # LogDb n LogDb::Models
require 'props/activerecord'      # ConfDb n ConfDb::Models

## require 'logutils/server'  # LogDb::Server


LogUtils::Logger.root.level = :info    # do not output debug msgs


## require 'sportdb/service'   # SportDb::Service  (lets use HTTP API service/server)


# Initialize the rails application
puts "[boot] environment.rb - before Application.initialize!"
Sportdbhost::Application.initialize!

## use generic Rails.application - why? why not?
# Initialize the Rails application.
# Rails.application.initialize!
puts "[boot] environment.rb - after Application.initialize!"
