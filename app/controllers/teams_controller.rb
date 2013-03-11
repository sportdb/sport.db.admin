class TeamsController < ApplicationController

  # GET /teams
  def index
    # make clubs default view
    index_clubs
  end

  def index_national_teams
    # todo: join country table to order by country.key ??
    @teams = Team.where( club: false ).order( 'country_id' ).all
  end

  def index_clubs
    @teams = Team.where( club: true )
    
    if params[:order].present?
      if params[:order] == 'key'
        @teams = @teams.order( 'key' )
      elsif params[:order] == 'title'
        @teams = @teams.order( 'title' )
      elsif params[:order] == 'code'
        @teams = @teams.order( 'code' )
      end
    else
      @teams = @teams.order( 'country_id' )
    end
    
    @teams = @teams.all
  end

  # GET /:key  e.g  /barcelona or /rapid etc.
  def shortcut
    @team = Team.find_by_key!( params[:key] )
    render :show
  end

  # GET /teams/1
  def show
    @team = Team.find(params[:id])
  end

end # class TeamsController