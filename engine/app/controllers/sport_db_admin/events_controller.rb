# encoding: utf-8

module SportDbAdmin

class EventsController < SportDbAdminController

  # GET /events
  def index
    @events = Event.all
  end

  # GET /events/1
  def show
    @event = Event.find( params[:id] )
  end
  
  # GET /:key  e.g  /euro.2012  or /at.2011_12 etc.
  def shortcut
    @event = Event.find_by_key!( params[:key].tr('_','/') )
    render :show
  end
  
end # class EventsController

end # module SportDbAdmin