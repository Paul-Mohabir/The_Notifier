class AddShiftIDtoNotifications < ActiveRecord::Migration[5.0]
  def change
  add_column :notifications, :shift_id, :integer

  end
end
