class CreateDb < ActiveRecord::Migration
  def up
    SportDB::CreateDB.up
  end

  def down
    raise IrreversibleMigration
  end
end
