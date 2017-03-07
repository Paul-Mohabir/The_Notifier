class Calendar < ApplicationRecord
  has_one :company
  validates_presence_of :name, :start_time, :end_time
end
