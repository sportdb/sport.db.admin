
class LogsController < ApplicationController

  def index
    @logs_count = LogDB::Models::Log.count
    @logs = LogDB::Models::Log.limit(100).all  
  end

end
