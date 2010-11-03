class CreateTaskRows < ActiveRecord::Migration
  def self.up
    create_table :task_rows do |t|
      t.date :startDate
      t.integer :task_id

      t.timestamps
    end
  end

  def self.down
    drop_table :task_rows
  end
end
