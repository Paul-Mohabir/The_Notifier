class CreateShifts < ActiveRecord::Migration[5.0]
  def change
    create_table :shifts do |t|
      t.string :employee
      t.string :time_of_day

      t.timestamps
    end
  end
end
