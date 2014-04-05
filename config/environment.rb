
# Load the rails application
puts "[boot] environment.rb - before require 'application'"
require File.expand_path('../application', __FILE__)
puts "[boot] environment.rb - after require 'application'"


######################
# logging config

# todo/fix: configure logging here - find a better place??
#  use just an initializer??

require 'logutils/db'      # LogDb n LogDb::Models
require 'logutils/server'  # LogDb::Server
require 'props/db'  # fix: also include textutils/db (move from_fixture to textutils)

LogUtils::Logger.root.level = :info    # do not output debug msgs


require 'sportdb/service'   # SportDb::Service  (lets use HTTP API service/server)


# Initialize the rails application
puts "[boot] environment.rb - before Application.initialize!"
Sportdbhost::Application.initialize!
puts "[boot] environment.rb - after Application.initialize!"
