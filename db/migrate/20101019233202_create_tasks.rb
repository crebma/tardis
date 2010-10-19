class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.string :project
      t.string :client
      t.string :team
      t.string :region
      t.string :location

      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
