# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Sportdb::Application.initialize!


######################
# logging config

# todo/fix: configure logging here - find a better place??
#  use just an initializer??

require 'logutils/db'

LogUtils::Logger.root.level = :info    # do not output debug msgs

