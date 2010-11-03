class RemoveTimeSheet < ActiveRecord::Migration
  def self.up
    drop_table :timesheets
  end

  def self.down
    raise ActiveRecord::IrreversibleMigration
  end
end
