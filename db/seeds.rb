# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Post.delete_all
Friendship.delete_all

u1 = User.create(email: 'test@mike.com', password: 'password')
p1 = Post.create(caption: 'Random coo', user: u1)
p1.post_image = Rails.root.join("db/seed_images/Cow.png").open
p1.save

u2 = User.create(email: 'gary@test.com', password: 'password')
p2 = Post.create(caption: 'Panda', user: u2)
p2.post_image = Rails.root.join("db/seed_images/Panda.png").open
p2.save

Friendship.create(user_id: u1.id, friend_id: u2.id)

u3 = User.create(email: 'person@test.com', password: 'password')
u4 = User.create(email: 'dude@test.com', password: 'password')