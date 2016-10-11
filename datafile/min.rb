##########################################
# Datafile for 10 000 records max.
#
#   note: heroku free plan has a limit of 10 000 records in database
#   use last two seasons


world  'world.db', setup: 'countries'

football 'eng-england', setup: 'sport.db.admin'
