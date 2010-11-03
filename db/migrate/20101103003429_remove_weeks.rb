class RemoveWeeks < ActiveRecord::Migration
  def self.up
    drop_table :weeks
  end

  def self.down
    raise ActiveRecord::IrreversibleMigration
  end
end
