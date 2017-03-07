class Company < ApplicationRecord
  has_one :calendar
  validates_presence_of :name
end
