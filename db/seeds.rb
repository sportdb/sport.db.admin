
LogDb.delete!
WorldDb.delete!  # danger zone! deletes all records
SportDb.delete!  # danger zone! deletes all records

# check for plugins/addons
if defined?( SportDb::Market )
  SportDb::Market.delete!
end


WorldDb.read_setup( 'setups/sport.db.admin', find_data_path_from_gemfile_gitref('world.db'), { skip_tags: true } )


SportDb.read_builtin
# national teams
SportDb.read_setup( 'setups/all',  find_data_path_from_gemfile_gitref('world-cup') )
SportDb.read_setup( 'setups/all',  find_data_path_from_gemfile_gitref('euro-cup') )

# clubs
SportDb.read_setup( 'setups/all',  find_data_path_from_gemfile_gitref('europe') )
SportDb.read_setup( 'setups/all',  find_data_path_from_gemfile_gitref('at-austria') )
SportDb.read_setup( 'setups/all',  find_data_path_from_gemfile_gitref('de-deutschland') )
SportDb.read_setup( 'setups/all',  find_data_path_from_gemfile_gitref('en-england') )
SportDb.read_setup( 'setups/all',  find_data_path_from_gemfile_gitref('es-espana') )


# check for plugins/addons
if defined?( SportDb::Market )
  SportDb::Market.load_all( find_data_path_from_gemfile_gitref('football.db-market') )
  SportDb::Market.read_all( find_data_path_from_gemfile_gitref('football.db-market') )
end


puts 'Done. Bye.'
