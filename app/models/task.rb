class Task < ApplicationRecord
  validates :status, inclusion: { in: ["open", "ongoing", "closed", "blocked"] }

  belongs_to :project
  belongs_to :team

  has_many_attached :files
end
