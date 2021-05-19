class Task < ApplicationRecord
  STATUS = ["open", "ongoing", "closed", "blocked"]

  validates :status, inclusion: { in: STATUS }

  belongs_to :project
  has_and_belongs_to_many :users

  has_many_attached :files
end
