# Load the rails application

puts "[debug] environment.rb - before require 'application'"
require File.expand_path('../application', __FILE__)
puts "[debug] environment.rb - after require 'application'"


######################
# logging config

# todo/fix: configure logging here - find a better place??
#  use just an initializer??

require 'logutils/db'      # LogDb n LogDb::Models
require 'logutils/server'  # LogDb::Server

LogUtils::Logger.root.level = :info    # do not output debug msgs


puts "[debug] environment.rb - before Application.initialize!"

# Initialize the rails application
Sportdb::Application.initialize!

puts "[debug] environment.rb - after Application.initialize!"


