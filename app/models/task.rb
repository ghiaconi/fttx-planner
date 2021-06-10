class Task < ApplicationRecord
  STATUS = ["open", "ongoing", "closed", "blocked"]

  validates :status, inclusion: { in: STATUS }

  has_many_attached :files

  belongs_to :project
  belongs_to :team
  has_many :materials

end
