class RenameTable < ActiveRecord::Migration[5.0]

  def self.up
    rename_table :employees, :users
  end

  def self.down
    rename_table :users, :employees
  end
end
