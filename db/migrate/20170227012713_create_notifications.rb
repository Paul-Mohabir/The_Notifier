class CreateNotifications < ActiveRecord::Migration[5.0]
  def change
    create_table :notifications do |t|
      t.string :shift_cancelled
      t.string :shift_rescheduled
      t.string :open_position

      t.timestamps
    end
  end
end
