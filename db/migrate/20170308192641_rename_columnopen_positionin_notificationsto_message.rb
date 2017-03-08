class RenameColumnopenPositioninNotificationstoMessage < ActiveRecord::Migration[5.0]
  def change
    rename_column :notifications, :open_position, :body
    rename_column :notifications, :shift_cancelled, :author_id
    rename_column :notifications, :shift_rescheduled, :recipient_id
  end
end
