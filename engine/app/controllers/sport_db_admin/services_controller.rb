# encoding: utf-8

### todo/fix:
#  move into its own subfolder?
#   optional controller for market plugin/addon

module SportDbAdmin

class ServicesController < SportDbAdminController

  # GET /services
  def index
    @services = Service.all
  end


end # class ServicesController

end # module SportDbAdmin
