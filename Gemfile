source 'https://rubygems.org'

gem 'rails', '3.2.12'

gem 'sinatra'


############
# lets use open sport.db schema & fixtures

gem 'logutils', '0.6.0'

gem 'worlddb-data', '9.9.9', :git => 'https://github.com/geraldb/world.db.git'

gem 'footballdb-data-world-cup',  '9.9.9', :git => 'https://github.com/openfootball/world-cup.git'
gem 'footballdb-data-euro-cup',   '9.9.9', :git => 'https://github.com/openfootball/euro-cup.git'

gem 'footballdb-data-europe', '9.9.9', :git => 'https://github.com/openfootball/europe.git'
gem 'footballdb-data-at',     '9.9.9', :git => 'https://github.com/openfootball/at-austria.git'
gem 'footballdb-data-de',     '9.9.9', :git => 'https://github.com/openfootball/de-deutschland.git'
gem 'footballdb-data-en',     '9.9.9', :git => 'https://github.com/openfootball/en-england.git'
gem 'footballdb-data-es',     '9.9.9', :git => 'https://github.com/openfootball/es-espana.git'


gem 'worlddb', '1.7.2'
gem 'sportdb', '1.7.1'


gem 'sportdb-service', '0.3.1'  # mountable JSON api service w/ Sinatra packaged into a gem for easy reuse


## add logos n flags

gem 'worlddb-flags', '0.1.0'  # use bundled country flags
gem 'sportdb-logos', '0.1.1',  :git => 'https://github.com/geraldb/sport.db.logos.ruby'


########
# add engines

gem 'sportdb-admin', '0.0.1', :path => './engine'


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
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

