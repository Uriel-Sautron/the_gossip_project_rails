class Tag < ApplicationRecord
  has_many :assignment_tags
  has_many :gossips, through: :assigment_tags
end
