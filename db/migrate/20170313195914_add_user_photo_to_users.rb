class AddUserPhotoToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :User_Photo, :string
  end
end
