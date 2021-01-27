# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Note.destroy_all
User.destroy_all


puts "creating users...."
user1 = User.create(username: "testuser1", password: "test1")
user2 = User.create(username: "testuser2", password: "test2")
user3 = User.create(username: "testuser3", password: "test3")

puts "creating notes...."
note1 = Note.create(title: "This is the first note test", subject: "Test", content: "his the first seed data content.", user_id: user1.id)
note2 = Note.create(title: "This is the second note test", subject: "Test", content: "This the second seed data content to test the size of the cards when they render different text.", user_id: user1.id)
note3 = Note.create(title: "This is the third note test", subject: "Test", content: "This the third seed data test to use for seed data that will help determine if my seed data is passing through to the database correctly.", user_id: user1.id)
note4 = Note.create(title: "This is the fourth note test", subject: "Test", content: "This the fourth seed data test to use for seed data that will help determine if my seed data is passing through to the database correctly.", user_id: user2.id)
note5 = Note.create(title: "This is the fifth note test", subject: "Test", content: "This the fifth seed data test to use for seed data that will help determine if my seed data is passing through to the database correctly.", user_id: user2.id)
note6 = Note.create(title: "This is the sixth note test", subject: "Test", content: "This the sixth seed data test to use for seed data that will help determine if my seed data is passing through to the database correctly.", user_id: user3.id)
note7 = Note.create(title: "This is the seventh note test", subject: "Test", content: "This the seventh seed data content.", user_id: user3.id)
note8 = Note.create(title: "This is the eighth note test", subject: "Test", content: "This the eighth seed data content to test the size of the cards when they render different text.", user_id: user3.id)
note9 = Note.create(title: "This is the ninth note test", subject: "Test", content: "This the ninth seed data test to use for seed data that will help determine if my seed data is passing through to the database correctly.", user_id: user3.id)
note10 = Note.create(title: "This is the tenth note test", subject: "Test", content: "This the tenth seed data test to use for seed data that will help determine if my seed data is passing through to the database correctly.", user_id: user3.id)
