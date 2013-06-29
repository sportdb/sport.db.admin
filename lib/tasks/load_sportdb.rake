
desc "sportdb: load all seed data from sportdb gem"
task :sportdb_load => [:environment] do |t|

  # SportDB.delete!  # danger zone! deletes all records
    
  # SportDB.read( ['at/2012_13/bl'] ## fix: needs include path??
  #  ['de.2012/13',       'de/2012_13/bl'],
  #  ['en.2012/13',       'en/2012_13/pl']
  # ])
  
end


desc "sportdb: load seed data for cl from sportdb gem"
task :sportdb_load_cl => [:environment] do |t|
  
  # SportDB.load([
  #  'cl/teams', 'cl/2012_13/cl'
  # ])
  
end

