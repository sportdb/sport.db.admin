module SportDbAdmin
module ApiHelper

  def sportdb_api_defined?
    defined?( SportDb::Service::Server ) == 'constant'
  end

  def sportdb_api?
    # shorter alias (remove long version??? why? why not?)
    sportdb_api_defined?
  end


  ##############################
  # routes for api
  
  def api_path
    '/api/v1'
  end


end # module ApiHelper
end # module SportDbAdmin

