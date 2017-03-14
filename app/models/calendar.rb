class Calendar < ApplicationRecord
  validates_presence_of :name, :start_time, :end_time
  has_many :notifications
end
