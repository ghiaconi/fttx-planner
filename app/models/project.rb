class Project < ApplicationRecord
  has_many_attached :files

  has_many :tasks
  has_many :teams, through: :tasks

end
