class AddEmployeeIdToCompany < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :EmployeeID, :integer
  end
end
