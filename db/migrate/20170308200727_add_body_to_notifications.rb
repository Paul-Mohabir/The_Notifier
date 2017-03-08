class AddBodyToNotifications < ActiveRecord::Migration[5.0]
  def change
    add_column :notifications, :message, :text
  end
end
