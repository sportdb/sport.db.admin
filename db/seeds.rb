

# WorldDB.delete!  # danger zone! deletes all records
LogDB.delete!
SportDB.delete!  # danger zone! deletes all records

# WorldDB.read_all( find_world_db_path_from_gemfile_gitref! )

# SportDB.read_all( find_football_db_path_from_gemfile_gitref! )
SportDB.read_setup( 'setups/uss', find_football_db_path_from_gemfile_gitref! )
