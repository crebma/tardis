class CreateWorkEntries < ActiveRecord::Migration
  def self.up
    create_table :work_entries do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :work_entries
  end
end
