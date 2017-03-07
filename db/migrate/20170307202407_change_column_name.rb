class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :companies, :EmployeeID , :userid
  end
end
