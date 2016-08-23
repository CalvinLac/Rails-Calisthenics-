class User < ApplicationRecord
  has_many :posts, through: :user_posts
  has_many :user_posts 
  has_many :comments, :foreign_key => :author_id
end
