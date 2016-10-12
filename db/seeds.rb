####
# e.g. use like
#   rake db:seed

config = ActiveRecord::Base.configurations
pp config

## todo/check: also check if in dev mode/env - why? why not?
##  note: only check in dev env!! - use pg (postgresql) for production
if Rails.env.development? && config['development']['adapter'] == 'sqlite3'
  puts "trying to speed up sqlite; use some pragmas"
  ## try to speed up sqlite
  ## see http://www.sqlite.org/pragma.html
  c = ActiveRecord::Base.connection

  # check:
  ##  if in memory e.g. ':memory:' no pragma needed!!
  c.execute( 'PRAGMA synchronous=OFF;' )
  c.execute( 'PRAGMA journal_mode=OFF;' )
  c.execute( 'PRAGMA temp_store=MEMORY;' )
end



require 'fetcher'   ## move to gemfile (or environment.rb) - why? why not?

## todo/check: reset database (delete all records) before - why? why not?

# LogDb.delete!
# ConfDb.delete!
# TagDb.delete!
# WorldDb.delete!
# PersonDb.delete!
# SportDb.delete!  # danger zone! deletes all records

##  todo/check: builtins get (auto)-added with datafile? no! - looks like not yet
##  -- move to create schema - why? why not?
SportDb.read_builtin

## todo/fix: allow datafile get passed in on command line!!!!


datafile = Datafile::Datafile.load_file( "#{Rails.root}/datafile/min.rb" )
## datafile = Datafile::Datafile.load_file( "#{Rails.root}/datafile/top.rb" )

datafile.dump

datafile.download    ## download zips from github - saved to ./tmp
datafile.read


puts 'Done. Bye.'
