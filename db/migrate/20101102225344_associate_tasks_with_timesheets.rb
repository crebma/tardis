class AssociateTasksWithTimesheets < ActiveRecord::Migration
  def self.up
    add_column :timesheets, :task_id, :integer
  end

  def self.down
    remove_column :timesheets, :task_id
  end
end
