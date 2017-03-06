class Notification < ApplicationRecord
  belongs_to :User
  belongs_to :Shift
  validates_presence_of :open_position
end
