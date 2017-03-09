class RenameUseridInCompanies < ActiveRecord::Migration[5.0]
  def up
    rename_column :companies, :userid, :user_id
  end
end
