class Company < ApplicationRecord
  has_one :Calendar
  validates_presence_of :name
end
