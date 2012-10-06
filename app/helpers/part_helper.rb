# encoding: utf-8

module PartHelper

  ###################################
  # helper for shared partials
  #
  # by convention all start w/ render_


  def render_game_date( game, opts={} )
    render :partial => 'shared/td_game_date', :locals => { :game => game }
  end

  def render_game_score( game, opts={} )
    render :partial => 'shared/td_game_score', :locals => { :game => game }
  end

  def render_game_team1( game, opts={} )
    render :partial => 'shared/td_game_team1', :locals => { :game => game }
  end

  def render_game_team2( game, opts={} )
    render :partial => 'shared/td_game_team2', :locals => { :game => game }
  end

end # module PartHelper