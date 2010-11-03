class AddTaskRowToDay < ActiveRecord::Migration
  def self.up
    add_column :days, :task_row_id, :integer
  end

  def self.down
    remove_column :days, :task_row_id
  end
end
