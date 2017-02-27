class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.string :day
      t.string :shift
      t.belongs_to :user

      t.timestamps
    end
  end
end
