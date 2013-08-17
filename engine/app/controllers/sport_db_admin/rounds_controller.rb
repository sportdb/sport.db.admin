# encoding: utf-8

module SportDbAdmin

class RoundsController < SportDbAdminController

  # GET /rounds
  def index
    @rounds = Round.order( 'start_at desc').all
  end


end # class RoundsController

end # module SportDbAdmin