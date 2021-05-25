class Team < ApplicationRecord
  has_many :tasks
  has_many :projects, through: :tasks

  # test validations
  has_many :users, class_name: 'User'
end
