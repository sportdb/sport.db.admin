# encoding: utf-8

module SportDbAdmin

class SourcesController < SportDbAdminController

  # GET /sources
  def index
    @events = Event.all
  end

end # class SourcesController

end # module SportDbAdmin
