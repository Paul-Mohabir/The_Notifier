class Company < ApplicationRecord
  has_one :calendar
  has_many :users
  has_many :notifications
  validates_presence_of :name
end
