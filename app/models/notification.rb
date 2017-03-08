class Notification < ApplicationRecord
  belongs_to :owner, source: :user
  belongs_to :company through: :user
  has_many :recipients, source: :user

  validates_presence_of :author_id, :company_id, :title, :message
end
