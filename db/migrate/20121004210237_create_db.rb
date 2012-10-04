class CreateDb < ActiveRecord::Migration
  def up

create_table :props do |t|
  t.string :key,   :null => false
  t.string :value, :null => false
  t.timestamps
end

  end

  def down
    raise IrreversibleMigration
  end
end
