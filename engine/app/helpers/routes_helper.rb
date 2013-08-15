# encoding: utf-8

module RoutesHelper

  ##############################
  ## routes for shortcuts
  
  def short_country_path( country )
    short_country_worker_path( country.key )
  end
  
  def short_team_path( team )
    short_team_worker_path( team.key )
  end

  def short_event_path( event )
    key = event.key.tr('/', '_')
    short_event_worker_path( key )
  end

end # module RoutesHelper

