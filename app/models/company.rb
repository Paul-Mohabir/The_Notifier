class Company < ApplicationRecord
  has_one :Calendar
  has_many :Users
  has_many :Notications
  validates_presence_of :name
end
