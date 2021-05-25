class Team < ApplicationRecord
  has_many :tasks
  has_many :projects, through: :tasks
  has_many :users, class_name: 'User'
end
