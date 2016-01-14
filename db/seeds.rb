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

u1 = User.create(email: 'test@mike.com', password: 'password', username: 'mike the duuude')

u2 = User.create(email: 'gary@test.com', password: 'password', username: 'gary the man')

u3 = User.create(email: 'ken@test.com', password: 'password', username: 'Kenneth')
u4 = User.create(email: 'carol@test.com', password: 'password', username: 'Carol')
u5 = User.create(email: 'sharon@test.com', password: 'password', username: 'Sharon')
u6 = User.create(email: 'duncan@test.com', password: 'password', username: 'Duncan')
u7 = User.create(email: 'lachlan@test.com', password: 'password', username: 'Lachlan')
u8 = User.create(email: 'betsy@test.com', password: 'password', username: 'Betsy')


Friendship.create(user_id: u1.id, friend_id: u2.id)

u3 = User.create(email: 'person@test.com', password: 'password')
u4 = User.create(email: 'dude@test.com', password: 'password')