
class RoundsController < ApplicationController

  # GET /rounds
  def index
    @rounds = Round.order( 'start_at desc').all
  end


end # class RoundsController