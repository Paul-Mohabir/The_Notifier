class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :phone
      t.string :emergency_contact
      t.string :position
      t.string :shift_preference
      t.integer :hours_worked
      t.string :salt
      t.string :crypted_password

      t.timestamps
    end
  end
end
