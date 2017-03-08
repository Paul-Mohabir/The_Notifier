class ChangeAuthorTypeInNotifications < ActiveRecord::Migration[5.0]
  def up
    change_column :notifications, :author_id, :integer
    change_column :notifications, :recipient_id, :integer
  end

  def down
    change_column :notifications, :author_id, :string
    change_column :notifications, :recipient_id, :string
  end
end
