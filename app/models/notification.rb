class Notification < ApplicationRecord
  belongs_to :author
  belongs_to :company
  has_many :recipients, source: :user

  validates_presence_of :author_id, :company_id, :title, :message
end
