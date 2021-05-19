class Project < ApplicationRecord

  has_many :tasks
  has_many :users, through: :tasks, as: tasks_users

  has_many_attached :files
end
