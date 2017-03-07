class Calendar < ApplicationRecord
  has_one :Company
  validates_presence_of :name, :start_time, :end_time
end
