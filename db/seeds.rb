
####
# e.g. use like
#   rake db:seed WORLD=f   or
#   rake db:seed WORLDDB=skip


skip_worlddb_str =  ENV['WORLD'] || ENV['WORLDDB']

if skip_worlddb_str.present? && ['f', 'false', 'skip'].include?( skip_worlddb_str )
  skip_worlddb = true
  puts 'skipping setup for world.db'
else
  skip_worlddb = false
end



LogDb.delete!
WorldDb.delete!  unless skip_worlddb    # danger zone! deletes all records
SportDb.delete!  # danger zone! deletes all records

# check for plugins/addons
if defined?( SportDb::Market )
  SportDb::Market.delete!
end


WorldDb.read_setup( 'setups/sport.db.admin', find_data_path_from_gemfile_gitref('world.db'), { skip_tags: true } )  unless skip_worlddb


SportDb.read_builtin

sportdb_setups = []

######################
# national teams

sportdb_setups +=[
  ['euro-cup',    'all'],
  ['africa-cup',  'teams'],
  ['america-cup', 'teams'],
  ['world-cup',   'all' ]
]

################
# clubs

sportdb_setups +=[
  ['europe',         'all'],
  ['at-austria',     'all'],
  ['de-deutschland', 'all'],
  ['en-england',     'all'],
  ['es-espana',      'all'],
  ['it-italy',       'all'],
  ['europe-champions-league', 'all']
]

sportdb_setups.each do |setup|
  SportDb.read_setup( "setups/#{setup[1]}", find_data_path_from_gemfile_gitref( setup[0]) )
end


# check for plugins/addons
if defined?( SportDb::Market )
  # SportDb::Market.load_all( find_data_path_from_gemfile_gitref('football.db-market') )
  # SportDb::Market.read_all( find_data_path_from_gemfile_gitref('football.db-market') )
end


puts 'Done. Bye.'
