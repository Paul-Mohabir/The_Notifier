class User < ApplicationRecord
  authenticates_with_sorcery!
  belongs_to :Company
  belongs_to :Calendar
  has_many :Notifications, through: :Company
  validates_presence_of :name, :address, :phone, :emergency_contact, :shift_preference, :password
  validates :email, uniqueness: true
end
