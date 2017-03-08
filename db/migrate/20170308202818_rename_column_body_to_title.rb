class RenameColumnBodyToTitle < ActiveRecord::Migration[5.0]
  def change
    rename_column :notifications, :body, :title
  end
end
