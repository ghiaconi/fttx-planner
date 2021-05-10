class Project < ApplicationRecord

  has_many :teams, through: tasks
  has_many :materials

  has_many_attached :files
end
