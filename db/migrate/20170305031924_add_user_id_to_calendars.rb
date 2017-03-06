class AddUserIdToCalendars < ActiveRecord::Migration[5.0]
  def change
    add_column :calendars, :UserId, :integer
  end
end
