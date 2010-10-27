class AddCategoryToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :category, :string
  end

  def self.down
    delete_column :users, :category
  end
end
