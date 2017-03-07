class Company < ApplicationRecord
  has_one :Calendar
  has_many :Users
  validates_presence_of :name
end
