class Team < ApplicationRecord
  has_many :tasks
  has_many :projects, through: :tasks
  has_many :users
end
