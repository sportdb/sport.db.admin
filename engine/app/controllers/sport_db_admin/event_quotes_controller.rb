# encoding: utf-8

### todo/fix:
#  move into its own subfolder?
#   optional controller for market plugin/addon

module SportDbAdmin

class EventQuotesController < SportDbAdminController

  # GET /quotes
  def index
    @quotes = EventQuote.joins( :event, :service ).order( 'events.start_at desc, service_id, odds' ).all
  end


end # class EventQuotesController

end # module SportDbAdmin
