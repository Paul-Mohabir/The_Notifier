class User < ApplicationRecord
  authenticates_with_sorcery!
  has_and_belongs_to_many :Shifts
  has_many :Notifications through :Shifts
  # validates :name, :address, :phone, :emergency_contact, :shift_preference, :password
  validates_presence_of :name, :address, :phone, :emergency_contact, :shift_preference, :password
  validates :email, uniqueness: true
end
