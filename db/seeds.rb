
LogDb.delete!
WorldDb.delete!  # danger zone! deletes all records
SportDb.delete!  # danger zone! deletes all records

WorldDb.read_setup( 'setups/sport.db.admin', find_world_db_path_from_gemfile_gitref!, { skip_tags: true } )
SportDb.read_setup( 'setups/all',            find_football_db_path_from_gemfile_gitref! )
