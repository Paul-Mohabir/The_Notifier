class RemoveUserIdFromCalendar < ActiveRecord::Migration[5.0]
  def change
    remove_column :calendars, :UserId, :integer
  end
end
