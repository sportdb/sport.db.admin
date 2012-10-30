
desc "sportdb: load all seed data from sportdb gem"
task :sportdb_load => [:environment] do |t|
  
  SportDB.delete!  # danger zone! deletes all records
  
  SportDB.load([
   'countries',
   'at/teams',
   'at/2011_12/bl',
   'at/2011_12/cup',
   'at/2012_13/bl',
   'at/2012_13/cup',
   'de/teams',
   'en/teams',
   'cl/teams',
   'cl/2011_12/cl',
   'cl/2011_12/el',
   'cl/2012_13/cl',
   'de/2012_13/bl',
   'en/2012_13/pl',
   'euro/teams',
   'euro/2012',
   'mx/teams',
   'mx/apertura_2012',
   'world/quali_2012_13',
   'world/quali_2012_13_c',
   'world/quali_2012_13_i',
   'nhl/teams'
   ])
  
  SportDB.read([
    ['at.2011/12',       'at/2011_12/bl'],
    ['at.2012/13',       'at/2012_13/bl'],
    ['at.cup.2012/13',   'at/2012_13/cup'],
    ['de.2012/13',       'de/2012_13/bl' ],
    ['en.2012/13',       'en/2012_13/pl' ],
    ['mx.apertura.2012', 'mx/apertura_2012' ],
    ['wmq',              'world/quali_2012_13_c' ]
  ])
  
end


desc "sportdb: load seed data for cl from sportdb gem"
task :sportdb_load_cl => [:environment] do |t|
  
  SportDB.load([
    'cl/teams', 'cl/2012_13/cl'
  ])
  
end

