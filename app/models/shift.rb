class Shift < ApplicationRecord
  has_and_belongs_to_many :Users
  has_many :Notifications
end
