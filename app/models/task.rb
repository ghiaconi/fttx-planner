class Task < ApplicationRecord
  validates :status, inclusion: { in: ["open", "ongoing", "closed", "blocked"] }

  belongs_to :project
  has_many :users

  has_many_attached :files
end
