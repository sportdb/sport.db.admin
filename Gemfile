source 'https://rubygems.org'

gem 'rails', '3.2.12'

gem 'sinatra', require: 'sinatra/base'


############
# lets use open sport.db schema & fixtures

gem 'logutils', '0.6.0'

gem 'worlddb-data', '9.9.9', git: 'https://github.com/openmundi/world.db.git'

gem 'footballdb-data-world-cup',              '9.9.9', git: 'https://github.com/openfootball/world-cup.git'
gem 'footballdb-data-euro-cup',               '9.9.9', git: 'https://github.com/openfootball/euro-cup.git'
gem 'footballdb-data-africa-cup',             '9.9.9', git: 'https://github.com/openfootball/africa-cup.git'
gem 'footballdb-data-north-america-gold-cup', '9.9.9', git: 'https://github.com/openfootball/north-america-gold-cup.git'
gem 'footballdb-data-copa-america',           '9.9.9', git: 'https://github.com/openfootball/copa-america.git'

gem 'footballdb-data-world',  '9.9.9', git: 'https://github.com/openfootball/world.git'
gem 'footballdb-data-europe', '9.9.9', git: 'https://github.com/openfootball/europe.git'
gem 'footballdb-data-at',     '9.9.9', git: 'https://github.com/openfootball/at-austria.git'
gem 'footballdb-data-de',     '9.9.9', git: 'https://github.com/openfootball/de-deutschland.git'
gem 'footballdb-data-en',     '9.9.9', git: 'https://github.com/openfootball/en-england.git'
gem 'footballdb-data-es',     '9.9.9', git: 'https://github.com/openfootball/es-espana.git'
gem 'footballdb-data-it',     '9.9.9', git: 'https://github.com/openfootball/it-italy.git'
gem 'footballdb-data-europe-champions-league', '9.9.9', git: 'https://github.com/openfootball/europe-champions-league.git'

gem 'footballdb-data-america',   '9.9.9', git: 'https://github.com/openfootball/america.git'
gem 'footballdb-data-mx-mexico', '9.9.9', git: 'https://github.com/openfootball/mx-mexico.git'
gem 'footballdb-data-north-america-champions-league', '9.9.9', git: 'https://github.com/openfootball/north-america-champions-league.git'
gem 'footballdb-data-br-brazil',         '9.9.9', git: 'https://github.com/openfootball/br-brazil.git'
gem 'footballdb-data-copa-libertadores', '9.9.9', git: 'https://github.com/openfootball/copa-libertadores.git'


gem 'worlddb', '1.7.2'
gem 'sportdb', '1.7.9'   # NB: starting w/ 1.7.3 includes mountable JSON api service w/ Sinatra


##################################
# optional sportdb plugins

gem 'sportdb-market', '0.5.0'

####
# fix: use new repo names europe-champions-league, etc.
# gem 'footballdb-data-market', '9.9.9',  git: 'https://github.com/openbookie/football.db.market.git'


########################
## add logos n flags

gem 'worlddb-flags', '0.1.0'  # use bundled country flags

gem 'sportdb-logos',    '0.1.0',  git: 'https://github.com/sportlogos/sport.db.logos.ruby.git'
gem 'footballdb-logos', '0.1.0',  git: 'https://github.com/sportlogos/football.db.logos.ruby.git'


########
# add engines

gem 'sportdb-admin', '0.0.1', path: './engine'

##########
# add sinatra (mountable) app(let)s

gem 'about'      # mountable app - about - sys info pages
gem 'dbbrowser'  # mountable app



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

