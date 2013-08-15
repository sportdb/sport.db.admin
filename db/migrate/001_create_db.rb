class CreateDb < ActiveRecord::Migration
  def up
    LogDb.create
    WorldDb.create
    SportDb.create
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
