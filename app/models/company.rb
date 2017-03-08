class Company < ApplicationRecord
  has_one :Calendar
  has_many :Users, :foreign_key => 'user_id'
  validates_presence_of :name
end
