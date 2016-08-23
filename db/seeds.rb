# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Category.destroy_all
Post.destroy_all
Tag.destroy_all
Comment.destroy_all
Tagging.destroy_all
UserPost.destroy_all

puts "user"
30.times do 
  u = User.new
  u.name = Faker::Name.name
  u.save
end

puts "cat"
30.times do 
  c = Category.new
  c.name = Faker::Name.name
  c.save
end

puts "post"
30.times do 
  p = Post.new
  p.title = Faker::Lorem.word
  p.body = Faker::Lorem.sentence
  p.category_id = Category.all.sample.id
  p.save
end

puts "tag"
30.times do
  t = Tag.new
  t.name = Faker::Lorem.word
  t.save
end 

puts "userpost"
30.times do 
  up = UserPost.new
  up.user_id = User.all.sample.id
  up.post_id = Post.all.sample.id
  up.save
end

puts "taggings"
30.times do 
  ting = Tagging.new
  ting.post_id = Post.all.sample.id
  ting.tag_id = Tag.all.sample.id
  ting.save
end

puts "comments"
30.times do 
  com = Comment.new 
  com.body = Faker::Lorem.sentence
  com.user_id = User.all.sample.id
  com.post_id = Post.all.sample.id
  com.save
end 

puts "seeding done, boi"




