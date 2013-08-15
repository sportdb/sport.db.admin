###
# todo/fix: move to textutils??

def find_data_path_from_gemfile_gitref( name )
  puts "[debug] find_data_path( name='#{name}' )..."
  puts "load path:"
  pp $LOAD_PATH

  # escape chars for regex e.g. . becomes \.
  name_esc = name.gsub( '.', '\.' )
  name_regex = /\/(#{name_esc}-[a-z0-9]+)|(#{name_esc})\/lib$/  # e.g. /\/(beer\.db-[a-z0-9]+)|(beer\.db)\//

  candidates = []
  $LOAD_PATH.each do |path|
    if path =~ name_regex
      # cutoff trailing /lib
      candidates << path[0..-5]
    end
  end

  puts 'found candidates:'
  pp candidates

  ## use first candidate
  candidates[0]
end


LogDb.delete!
WorldDb.delete!  # danger zone! deletes all records
SportDb.delete!  # danger zone! deletes all records

WorldDb.read_setup( 'setups/sport.db.admin', find_world_db_path_from_gemfile_gitref!, { skip_tags: true } )


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

puts 'Done. Bye.'
