class Task < ApplicationRecord
  STATUS = ["open", "ongoing", "closed", "blocked"]

  validates :status, inclusion: { in: STATUS }

  belongs_to :user
  belongs_to :project

  has_many_attached :files
end
