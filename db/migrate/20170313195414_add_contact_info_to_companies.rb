class AddContactInfoToCompanies < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :contact_info, :text
  end
end
