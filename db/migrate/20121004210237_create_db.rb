class CreateDb < ActiveRecord::Migration
  def up
    WorldDB.create
    SportDB.create
  end

  def down
    raise IrreversibleMigration
  end
end
