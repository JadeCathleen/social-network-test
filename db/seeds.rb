# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
User.destroy_all
Post.destroy_all

user = User.create(email: "test@test.com", password: '123123')

post1 = Post.new(user: user, title: "How is started using Stimulus", content: "I received a github repository from the company I was interviewing at and they stated it was a pre-requisite. Since then I've discovered what an amzing tool it is.")
file = URI.open('https://upload.wikimedia.org/wikipedia/commons/8/85/Graphic_about_stimulus_check_for_American_Rescue_Plan.jpg')
post1.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
post1.save


post2 = Post.new(user: user, title: "Why reflex?", content: "Because it's simply the best!")
file2 = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg')
post2.photo.attach(io: file2, filename: 'nes.png', content_type: 'image/png')
post2.save


post3 = Post.new(user: user, title: "Your first tech interview", content: "Just keep calm and relax. They aren't trying to trick you, and they know finding your first coding job is stressful. Just take a breath and show them what you can do.")
file3 = URI.open('https://upload.wikimedia.org/wikipedia/commons/8/85/Young_Man_in_a_Interview.jpg')
post3.photo.attach(io: file3, filename: 'nes.png', content_type: 'image/png')
post3.save
