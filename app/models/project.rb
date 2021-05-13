class Project < ApplicationRecord

  has_many :materials
  has_many :tasks

  has_many :users, through: :tasks

  has_many_attached :files
end
