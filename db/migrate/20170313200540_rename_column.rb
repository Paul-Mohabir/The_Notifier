class RenameColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :User_Photo, :user_photo
  end
end
