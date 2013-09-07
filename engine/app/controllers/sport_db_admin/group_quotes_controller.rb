# encoding: utf-8

### todo/fix:
#  move into its own subfolder?
#   optional controller for market plugin/addon

module SportDbAdmin

class GroupQuotesController < SportDbAdminController

  # GET /quotes
  def index
    @quotes = GroupQuote.joins( :service, :group => :event ).order( 'events.start_at desc, group_id, service_id, odds' ).all
  end


end # class GroupQuotesController

end # module SportDbAdmin
