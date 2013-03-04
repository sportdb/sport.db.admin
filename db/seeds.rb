
LogDB.delete!
WorldDB.delete!  # danger zone! deletes all records
SportDB.delete!  # danger zone! deletes all records

WorldDB.read_setup( 'setups/sport.db.admin', find_world_db_path_from_gemfile_gitref!, { skip_tags: true } )
SportDB.read_setup( 'setups/all',            find_football_db_path_from_gemfile_gitref! )
