class User < ApplicationRecord
  authenticates_with_sorcery!
  belongs_to :company
  has_many :calendars
  has_many :notifications, through: :company
  validates_presence_of :name, :address, :phone, :emergency_contact, :shift_preference, :password
  validates :email, uniqueness: true
end
