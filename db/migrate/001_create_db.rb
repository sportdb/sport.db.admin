class CreateDb < ActiveRecord::Migration
  def up
    LogDb.create
    WorldDb.create
    SportDb.create
    
    # check for plugins/addons
    if defined?( SportDb::Market )
      SportDb::Market.create
    end

  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
