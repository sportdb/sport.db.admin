class GamesController < ApplicationController

  # GET /games
  def index
    # find next upcoming games
    limit = params[:limit] || '50'
    
    @games = Game.where( 'play_at > ?', Time.now ).order( 'play_at').limit(limit)
    @show_upcoming = true
  end
  
  # GET /games/past
  def past
    limit = params[:limit] || '50'
    
    if params[:null].present?   # e.g. use ?null=t
      ## find all past games w/ missing score
      @games = Game.where( 'play_at < ?', Time.now ).
                    where( 'score1 is null or score2 is null').
                    order( 'play_at desc').limit(limit)
    else
      @games = Game.where( 'play_at < ?', Time.now ).order( 'play_at desc').limit(limit)
    end
    
    @show_upcoming = false
    
    render :action => 'index'
  end

end # class GamesController