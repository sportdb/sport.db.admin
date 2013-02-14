source 'https://rubygems.org'

gem 'rails', '3.2.12'

############
# lets use open sport.db schema & fixtures

# gem 'sportdb', '0.8.0'

gem "worlddb-data", "99", :git => "git://github.com/geraldb/world.db.git"
gem "sportdb-data", "99", :git => "git://github.com/geraldb/football.db.git"

gem "logutils", "0.1.0",  :git => "git://github.com/geraldb/logutils"
gem "textutils", "0.3.0", :git => "git://github.com/geraldb/textutils"

gem "worlddb", "0.10.0", :git => "git://github.com/geraldb/world.db.ruby.git"
gem "sportdb", "0.10.0", :git => "git://github.com/geraldb/sport.db.ruby.git"


# gem "worlddb-data", "999", :path => "../world.db"
# gem "sportdb-data", "999", :path => "../football.db"

# gem "logutils", "0.1.0",  :path => "../logutils"
# gem "textutils", "0.3.0",  :path => "../textutils"

# gem "worlddb", "0.10.0", :path => "../world.db.ruby"
# gem "sportdb", "0.10.0", :path => "../sport.db.ruby"



group :production do
  gem 'pg'
  gem 'thin'    # use faster multiplexed (w/ eventmachine) web server
end

group :development do
  gem 'sqlite3'
  gem 'annotate', '~> 2.4.1.beta'
end



# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
