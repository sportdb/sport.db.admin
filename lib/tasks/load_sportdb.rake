
desc "sportdb: load all seed data from sportdb gem"
task :sportdb_load => [:environment] do |t|
  
  WorldDB.delete!  # danger zone! deletes all records
  SportDB.delete!  # danger zone! deletes all records
  
  WorldDB.load([
   'countries',
   'cities',
   'at/cities',
   'de/cities'
  ])
  
  SportDB.load([
   'leagues',
   'seasons',
   'at/teams',
   'at/badges',
   'at/2011_12/bl',
   'at/2011_12/cup',
   'at/2012_13/bl',
   'at/2012_13/cup',
   'de/teams',
   'en/teams',
   'cl/teams',
   'cl/badges',
   'cl/2011_12/cl',
   'cl/2011_12/el',
   'cl/2012_13/cl',
   'de/2012_13/bl',
   'en/2012_13/pl',
   'euro/teams',
   'euro/2008',
   'euro/2012',
   'mx/teams',
   'mx/apertura_2012',
   'copa/teams',
   'copa/sud_2012_13',
   'world/teams',
   'world/2010',
   'world/quali_2012_13_europe',
   'world/quali_2012_13_europe_c',
   'world/quali_2012_13_europe_i',
   'world/quali_2012_13_america',
   'nhl/teams'
   ])
  
  SportDB.read([
    ['at.2011/12',       'at/2011_12/bl'],
    ['at.2012/13',       'at/2012_13/bl'],
    ['at.cup.2012/13',   'at/2012_13/cup'],
    ['de.2012/13',       'de/2012_13/bl'],
    ['en.2012/13',       'en/2012_13/pl'],
    ['mx.apertura.2012', 'mx/apertura_2012'],
    ['copa.sud.2012/13', 'copa/sud_2012_13'],
    ['euro.2008',        'euro/2008'],
    ['wm.2010',          'world/2010'],
    ['wmq.euro',         'world/quali_2012_13_europe_c'],
    ['wmq.america',      'world/quali_2012_13_america']
  ])
  
end


desc "sportdb: load seed data for cl from sportdb gem"
task :sportdb_load_cl => [:environment] do |t|
  
  SportDB.load([
    'cl/teams', 'cl/2012_13/cl'
  ])
  
end

