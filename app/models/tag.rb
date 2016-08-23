class Tag < ApplicationRecord
  has_many :posts, through: :taggings
  has_many :taggings
end
