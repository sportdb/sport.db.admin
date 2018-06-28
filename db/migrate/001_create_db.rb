
class CreateDb < ActiveRecord::Migration[5.2]
  def up
    LogDb.create
    ConfDb.create
    TagDb.create
    WorldDb.create
    PersonDb.create
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
