# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Note.destroy_all

puts "creating users...."
user1 = User.create(username: "testUser1")

puts "creating notes...."
note1 = Note.create(title: "This is the first note test", subject: "Test", content: "This the first seed data test to use for seed data that will help determine if my seed data is passing through to the database correctly.", user_id: user1.id)
note2 = Note.create(title: "This is the second note test", subject: "Test", content: "This the second seed data test to use for seed data that will help determine if my seed data is passing through to the database correctly.", user_id: user1.id)
note3 = Note.create(title: "This is the third note test", subject: "Test", content: "This the third seed data test to use for seed data that will help determine if my seed data is passing through to the database correctly.", user_id: user1.id)
note4 = Note.create(title: "This is the fourth note test", subject: "Test", content: "This the fourth seed data test to use for seed data that will help determine if my seed data is passing through to the database correctly.", user_id: user1.id)
note5 = Note.create(title: "This is the fifth note test", subject: "Test", content: "This the fourth seed data test to use for seed data that will help determine if my seed data is passing through to the database correctly.", user_id: user1.id)
