source 'https://rubygems.org'
##   Resolving dependencies...
##   Could not verify the SSL certificate for
##   https://rubygems.org/quick/Marshal.4.8/thread_safe-0.3.5-java.gemspec.rz.
##   ...

## source 'http://rubygems.org'    ## trouble with SSL certificate; use/try HTTP
##   NoMethodError: undefined method `spec' for nil:NilClass
##   An error occurred while installing footballdb-logos (0.1.0), and Bundler cannot continue.


## ruby '2.3.3'   # note: heroku requires a ruby version (falls back to old 1.9.x)
ruby '2.4.4'

gem 'rails', '5.2.0'

gem 'sinatra', require: 'sinatra/base'


# Use SCSS for stylesheets
gem 'sass-rails'        ## , '~> 5.0'

# Use jquery as the JavaScript library
gem 'jquery-rails'


# Use Uglifier as compressor for JavaScript assets - note: needed for asset precomile in production
## gem 'uglifier', '>= 1.3.0'   -- in config/env../production.rb comment out: config.assets.js_compressor = :uglifier

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.0'


############
# lets use open sport.db schema & fixtures

gem 'logutils'   ###, '0.6.0'
gem 'logutils-activerecord'     # LogDb n LogDb::Models
gem 'props'
gem 'props-activerecord'        # ConfDb n ConfDb::Models


gem 'worlddb-models'   ## , '2.3.4'
gem 'sportdb-models'   ## , '1.16.2'
gem 'datafile'

##################################
# optional sportdb plugins

### gem 'sportdb-market', '0.5.1'


########################
## add logos n flags

gem 'worlddb-flags', '0.1.0'  # use bundled country flags

## gem 'sportdb-logos',    '0.1.0',  git: 'https://github.com/sportlogos/sport.db.logos.ruby.git', branch: 'gh-pages'
## gem 'footballdb-logos', '0.1.0',  git: 'https://github.com/sportlogos/football.db.logos.ruby.git', branch: 'gh-pages'


########
# add engines

gem 'sportdb-admin', '0.0.1', path: './engine'

##########
# add sinatra (mountable) app(let)s

gem 'about'      # mountable app - about - sys info pages
gem 'dbbrowser'  # mountable app



gem 'puma'   # use (faster) web server (rails 5 default)


group :production do
  gem 'pg'

  ## gem 'thin'    # use faster multiplexed (w/ eventmachine) web server

  ## required for Rails 4.x on heroku
  ##   see https://github.com/heroku/rails_12factor
  ## gem 'rails_12factor'
end

group :development do
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
  gem 'annotate'    ## , '~> 2.4.1.beta'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '>= 3.3.0'
end


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
