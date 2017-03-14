class AddCompanyIdToCalendars < ActiveRecord::Migration[5.0]
  def change
    add_column :calendars, :company_id, :integer
  end
end
