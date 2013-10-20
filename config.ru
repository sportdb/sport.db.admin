# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)


####
# todo/fix: move into dbbrowser gem as utility method - why? why not?

def add_database_url_config()
  str = ENV['DATABASE_URL']
  if str.blank?
    puts "no ENV['DATABASE_URL'] found; skip adding DATABASE_URL config"
    return
  end
  
  ####
  # fix/todo:
  #  for config key (now db)
  #   use RACK_ENV or RAILS_ENV if present?? why? why not?
  #  only if not already in config? possible?
  
  db = URI.parse( str )

  ### use spec instead of config ???

  if db.scheme == 'postgres'
    config = {
          adapter:  'postgresql',
          host:     db.host,
          port:     db.port,
          username: db.user,
          password: db.password,
          database: db.path[1..-1],
          encoding: 'utf8'
        }
  else 
      config = {
        adapter:  db.scheme,       # sqlite3
        database: db.path[1..-1]   # pluto.db (NB: cut off leading /, thus 1..-1)
      }
  end

  puts 'db settings:'
  pp config

  if ActiveRecord::Base.configurations.nil?
    puts "ActiveRecord configurations nil - set to empty hash"
    ActiveRecord::Base.configurations = {}  # make it an empty hash
  end

  puts 'ar configurations (before):'
  pp ActiveRecord::Base.configurations

  ActiveRecord::Base.configurations['db'] = config

  puts 'ar configurations (after):'
  pp ActiveRecord::Base.configurations
end

add_database_url_config()


run Sportdbhost::Application
