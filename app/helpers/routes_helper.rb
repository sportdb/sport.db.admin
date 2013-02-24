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

end # module RoutesHelper

