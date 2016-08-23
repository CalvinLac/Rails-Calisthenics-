class Post < ApplicationRecord
  has_many :tags, through: :taggings
  has_many :taggings
  has_many :users, through: :user_posts
  has_many :user_posts
  has_many :taggings
  has_many :comments
end
