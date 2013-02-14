
LogDB.delete!
WorldDB.delete!  # danger zone! deletes all records
SportDB.delete!  # danger zone! deletes all records

WorldDB.read_all( find_world_db_path_from_gemfile_gitref! )
SportDB.read_all( find_football_db_path_from_gemfile_gitref! )

## SportDB.read_setup( 'setups/all', find_football_db_path_from_gemfile_gitref! )
