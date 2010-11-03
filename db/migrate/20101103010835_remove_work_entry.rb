class RemoveWorkEntry < ActiveRecord::Migration
  def self.up
    drop_table :work_entries
  end

  def self.down
    raise ActiveRecord::IrreversibleMigration
  end
end
