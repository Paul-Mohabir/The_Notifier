class User < ApplicationRecord
  authenticates_with_sorcery!
  has_one :Schedule
  has_one :Shift      
  # validates :name, :address, :phone, :emergency_contact, :shift_preference, :password
  validates_presence_of :name, :address, :phone, :emergency_contact, :shift_preference, :password
  validates :email, uniqueness: true
end
