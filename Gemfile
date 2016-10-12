source 'https://rubygems.org'
##   Resolving dependencies...
##   Could not verify the SSL certificate for
##   https://rubygems.org/quick/Marshal.4.8/thread_safe-0.3.5-java.gemspec.rz.
##   ...

## source 'http://rubygems.org'    ## trouble with SSL certificate; use/try HTTP
##   NoMethodError: undefined method `spec' for nil:NilClass
##   An error occurred while installing footballdb-logos (0.1.0), and Bundler cannot continue.


ruby '2.1.5'   # note: heroku requires a ruby version (falls back to old 1.9.x)

gem 'rails', '4.2.7.1'

gem 'sinatra', require: 'sinatra/base'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Use Uglifier as compressor for JavaScript assets - note: needed for asset precomile in production
## gem 'uglifier', '>= 1.3.0'   -- in config/env../production.rb comment out: config.assets.js_compressor = :uglifier

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'


############
# lets use open sport.db schema & fixtures

gem 'logutils'   ###, '0.6.0'
gem 'logutils-activerecord'     # LogDb n LogDb::Models
gem 'props-activerecord'        # ConfDb n ConfDb::Models

## gem 'worlddb-data', '9.9.9', git: 'https://github.com/openmundi/world.db.git'

## gem 'footballdb-data-national-teams',         '9.9.9', git: 'https://github.com/openfootball/national-teams.git'
## gem 'footballdb-data-world-cup',              '9.9.9', git: 'https://github.com/openfootball/world-cup.git'
## gem 'footballdb-data-euro-cup',               '9.9.9', git: 'https://github.com/openfootball/euro-cup.git'
## gem 'footballdb-data-africa-cup',             '9.9.9', git: 'https://github.com/openfootball/africa-cup.git'
## gem 'footballdb-data-north-america-gold-cup', '9.9.9', git: 'https://github.com/openfootball/north-america-gold-cup.git'
## gem 'footballdb-data-copa-america',           '9.9.9', git: 'https://github.com/openfootball/copa-america.git'

## gem 'footballdb-data-clubs',  '9.9.9', git: 'https://github.com/openfootball/clubs.git'
## gem 'footballdb-data-at',     '9.9.9', git: 'https://github.com/openfootball/at-austria.git'
## gem 'footballdb-data-ch',     '9.9.9', git: 'https://github.com/openfootball/ch-confoederatio-helvetica.git'
## gem 'footballdb-data-de',     '9.9.9', git: 'https://github.com/openfootball/de-deutschland.git'
## gem 'footballdb-data-en',     '9.9.9', git: 'https://github.com/openfootball/en-england.git'
## gem 'footballdb-data-es',     '9.9.9', git: 'https://github.com/openfootball/es-espana.git'
## gem 'footballdb-data-it',     '9.9.9', git: 'https://github.com/openfootball/it-italy.git'
## gem 'footballdb-data-fr',     '9.9.9', git: 'https://github.com/openfootball/fr-france.git'
## gem 'footballdb-data-europe-champions-league', '9.9.9', git: 'https://github.com/openfootball/europe-champions-league.git'

## gem 'footballdb-data-mx-mexico', '9.9.9', git: 'https://github.com/openfootball/mx-mexico.git'
## gem 'footballdb-data-north-america-champions-league', '9.9.9', git: 'https://github.com/openfootball/north-america-champions-league.git'
## gem 'footballdb-data-br-brazil',         '9.9.9', git: 'https://github.com/openfootball/br-brazil.git'
## gem 'footballdb-data-copa-libertadores', '9.9.9', git: 'https://github.com/openfootball/copa-libertadores.git'


gem 'worlddb-models', '2.3.4'
gem 'sportdb-models', '1.16.2'
gem 'datafile'

##################################
# optional sportdb plugins

### gem 'sportdb-market', '0.5.1'


########################
## add logos n flags

gem 'worlddb-flags', '0.1.0'  # use bundled country flags

gem 'sportdb-logos',    '0.1.0',  git: 'https://github.com/sportlogos/sport.db.logos.ruby.git', branch: 'gh-pages'
gem 'footballdb-logos', '0.1.0',  git: 'https://github.com/sportlogos/football.db.logos.ruby.git', branch: 'gh-pages'


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
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
  gem 'annotate', '~> 2.4.1.beta'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
