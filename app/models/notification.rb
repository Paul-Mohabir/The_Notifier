class Notification < ApplicationRecord
  belongs_to :User, :Shift
end
