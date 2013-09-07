# encoding: utf-8

module SportDbAdmin
module PartHelper

  ###################################
  # helper for shared partials
  #
  # by convention all start w/ render_

  ############
  # partial for market plugin


  def render_event_quotes( event, opts={} )
    render partial: 'sport_db_admin/shared/table_event_quotes', locals: { event: event }
  end

  ## todo: add render_group_goutes !!!!

  def render_game_quotes( game, opts={} )
    render partial: 'sport_db_admin/shared/table_game_quotes', locals: { game: game }
  end


  ###########
  # partial for core/regular code

  def render_game_date( game, opts={} )
    render partial: 'sport_db_admin/shared/td_game_date', locals: { game: game }
  end

  def render_game_score( game, opts={} )
    render partial: 'sport_db_admin/shared/td_game_score', locals: { game: game }
  end

  def render_game_team1( game, opts={} )
    render partial: 'sport_db_admin/shared/td_game_team1', locals: { game: game }
  end

  def render_game_team2( game, opts={} )
    render partial: 'sport_db_admin/shared/td_game_team2', locals: { game: game }
  end

  def render_game_flags( game, opts={} )
    render partial: 'sport_db_admin/shared/td_game_flags', locals: { game: game }
  end

  def render_game_debug( game, opts={} )
    render partial: 'sport_db_admin/shared/td_game_debug', locals: { game: game }
  end

  def render_game_round( game, opts={} )
    render partial: 'sport_db_admin/shared/td_game_round', locals: { game: game }
  end


  def render_team_world_tree( team, opts={} )
    render partial: 'sport_db_admin/shared/team_world_tree', locals: { team: team }
  end


end # module PartHelper
end # module SportDbAdmin