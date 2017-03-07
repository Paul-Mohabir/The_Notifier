class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :companies, :EmployeeID , :user_id
  end
end
