class Notification < ApplicationRecord
  belongs_to :User
  belongs_to :Shift
end
