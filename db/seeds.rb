
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
ConfDb.delete!

unless skip_worlddb    # danger zone! deletes all records
  TagDb.delete!
  WorldDb.delete!  
end

PersonDb.delete!
SportDb.delete!  # danger zone! deletes all records


# check for plugins/addons
if defined?( SportDb::Market )
  ### SportDb::Market.delete!
end


WorldDb.read_setup( 'setups/sport.db.admin', find_data_path_from_gemfile_gitref('world.db'), { skip_tags: true } )  unless skip_worlddb


SportDb.read_builtin

sportdb_setups = []

######################
# national teams

=begin
sportdb_setups +=[
  ['national-teams', 'all'  ],
##  ['euro-cup',       '2012' ],
  ['world-cup',      '2014' ]
]
=end


################
# clubs

sportdb_setups += [
  ['fr-france',      '2014-15'],
##  ['at-austria',     '2014-15'],  ## - has goals - needs new schema
  ['de-deutschland', '2014-15'],
  ['en-england',     '2014-15'],
]


=begin
sportdb_setups +=[
  ['clubs',          'all'],
  ['at-austria',     '2013_14'],
  ['de-deutschland', '2013_14'],
  ['en-england',     '2013_14'],
  ['es-espana',      '2013_14'],
  ['it-italy',       '2013_14'],
  ['europe-champions-league', '2013_14'],
  ['mx-mexico',      'teams'],
##  ['mx-mexico','2013_14'],
  ['north-america-champions-league','2013_14'],
##  ['br-brazil','2013'],
  ['copa-libertadores','2013'],
######## fix: use club-world-cup (not longer resides in world)
##  ['world',          '2013'],    # circular reference; requires other teams
]
=end


sportdb_setups.each do |setup|
  SportDb.read_setup( "setups/#{setup[1]}", find_data_path_from_gemfile_gitref( setup[0]) )
end


# check for plugins/addons
if defined?( SportDb::Market )
  # SportDb::Market.load_all( find_data_path_from_gemfile_gitref('football.db-market') )
  # SportDb::Market.read_all( find_data_path_from_gemfile_gitref('football.db-market') )
end


puts 'Done. Bye.'
