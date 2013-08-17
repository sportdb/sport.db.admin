# encoding: utf-8

module SportDbAdmin

class RegionsController < SportDbAdminController

  # GET /countries
  def index
    ## todo: only get countries w/ regions
    @countries = Country.all
  end


end # class RegionsController

end # module SportDbAdmin