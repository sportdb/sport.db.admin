
desc "sportdb: load all seed data from sportdb gem"
task :sportdb_load => [:environment] do |t|
  
  SportDB.load([
   'euro/teams', 'euro/2012',
   'world/quali_2012_13',
   'cl/teams', 'cl/2011_12/cl', 'cl/2011_12/el', 'cl/2012_13/cl'
   ])
  
end


desc "sportdb: load seed data for cl from sportdb gem"
task :sportdb_load_cl => [:environment] do |t|
  
  SportDB.load([
    'cl/teams', 'cl/2012_13/cl'
  ])
  
end

