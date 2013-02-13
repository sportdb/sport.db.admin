class CreateDb < ActiveRecord::Migration
  def up
    LogDB.create
    WorldDB.create
    SportDB.create
  end

  def down
    raise IrreversibleMigration
  end
end
