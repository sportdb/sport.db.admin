class CreateDb < ActiveRecord::Migration
  def up

    # do nothing for now

  end

  def down
    raise IrreversibleMigration
  end
end
