class TeamsController < ApplicationController

  # GET /teams
  def index
    
    # todo: join country table to order by country.key
    
    @national_teams = Team.where( national: true ).order( 'country_id' ).all
    @club_teams     = Team.where( club: true ).order( 'country_id' ).all
  end

  # GET /teams/1
  def show
    @team = Team.find(params[:id])
  end

end # class TeamsController