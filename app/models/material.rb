class Material < ApplicationRecord

  belongs_to :task

  has_one_attached :picture
end
