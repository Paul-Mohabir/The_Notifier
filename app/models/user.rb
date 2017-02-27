class User < ApplicationRecord

  validates_presence_of :name, :address, :phone, :emergency_contact, :shift_preference, :password
  validate :email uniqueness: true
end
