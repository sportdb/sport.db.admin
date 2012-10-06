
class EventTeam < ActiveRecord::Base
  self.table_name = 'events_teams'
  
  belongs_to :event
  belongs_to :team
end

