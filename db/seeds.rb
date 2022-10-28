# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# 10.times do
#   user = User.create(
#     first_name: Faker::Name.first_name,
#     last_name:  Faker::Name.last_name,
#     about:      Faker::Lorem.paragraphs,
#     email:      Faker::Internet.email,
#     password:   '12345' )

#   post = Post.create(
#     title: Faker::Dessert.variety,
#     content: Faker::Lorem.paragraphs,
#     is_publish: Faker::Boolean.boolean,
#     intro: Faker::Lorem.paragraph(sentence_count: 5),
#     user: user)  #foreign key(user_id) rails understands this coz it sees the association
#                  #concerned so it knows that foreign key is being refered to here

#   comment = Comment.create(
#       full_name: Faker::Name.name,
#       email:     Faker::Internet.email,
#       message:   Faker::Lorem.paragraph(sentence_count: 5),
#       status:    Faker::Boolean.boolean,
#       post:   post) #foreign key(post_id)



#   message = Message.create(
#     full_name: Faker::Name.last_name,
#     email:     Faker::Internet.email,
#     contact:   Faker::Number.number(digits: 10) )

#   tag = Tag.create(
#     name: Faker::Dessert.variety)

#   message_notification = message.notifications.create
#   comment_notification = comment.notifications.create


# end


setting = Setting.create(
  blog_name: "Wisdom Verses",
  about: "Wisdom Verses is all about presenting before you an alternative 
  perspective on things pertaining to our respective lives.")