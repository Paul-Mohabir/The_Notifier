class AddCompanyIDtoNotifications < ActiveRecord::Migration[5.0]
  def change
  add_column :notifications, :company_id, :integer
  end
end
