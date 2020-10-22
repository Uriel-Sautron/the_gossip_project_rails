class Gossip < ApplicationRecord
  belongs_to :user
  has_many :assignment_tags
  has_many :tags, through: :assigment_tags
end
