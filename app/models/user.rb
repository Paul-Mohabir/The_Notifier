class User < ApplicationRecord
  authenticates_with_sorcery!
  belongs_to :Company, :foreign_key => 'companies_id'
  has_and_belongs_to_many :Shifts
  has_many :Notifications, through: :Shifts
  validates_presence_of :name, :address, :phone, :emergency_contact, :shift_preference, :password, :company_id
  validates :email, uniqueness: true
end
