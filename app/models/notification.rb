class Notification < ApplicationRecord
  belongs_to :User

  validates_presence_of :open_position
end
