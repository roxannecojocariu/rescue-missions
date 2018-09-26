# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(email:"cooldude@cooldude.com", password: "123456")
user2 = User.create(email:"yesman@yesman.com", password: "123456")
user3 = User.create(email:"whatsup@whatsup.com", password: "123456")

question_data = [
  {
    title: "How much wood could a #{Faker::Pokemon.name} chuck if a #{Faker::Pokemon.name} could chuck wood?",
    description: "#{Faker::DrWho.quote} #{Faker::HarryPotter.spell} #{Faker::HarryPotter.spell} #{Faker::HarryPotter.spell}",
    user: user1
  },
  {
    title: "How much wood could a #{Faker::Pokemon.name} chuck if a #{Faker::Pokemon.name} could chuck wood?",
    description: "#{Faker::DrWho.quote} #{Faker::HarryPotter.spell} #{Faker::HarryPotter.spell} #{Faker::HarryPotter.spell}",
    user: user2
  },
  {
    title: "How much wood could a #{Faker::Pokemon.name} chuck if a #{Faker::Pokemon.name} could chuck wood?",
    description: "#{Faker::DrWho.quote} #{Faker::HarryPotter.spell} #{Faker::HarryPotter.spell} #{Faker::HarryPotter.spell}",
    user: user3
  }
]

question_data.each do |question|
  Question.create(question)
end

answer_data = [
  {
    description: "#{Faker::DrWho.quote}.  If you're still stuck, you should take a look at some useful links about #{Faker::Pokemon.name} for help.",
    user: user1,
    question: Question.first
  },
  {
    description: "#{Faker::DrWho.quote}.  If you're still stuck, you should take a look at some useful links about #{Faker::Pokemon.name} for help.",
    user: user1,
    question: Question.second
  },
  {
    description: "#{Faker::DrWho.quote}.  If you're still stuck, you should take a look at some useful links about #{Faker::Pokemon.name} for help.",
    user: user2,
    question: Question.first
  },
  {
    description: "#{Faker::DrWho.quote}.  If you're still stuck, you should take a look at some useful links about #{Faker::Pokemon.name} for help.",
    user: user2,
    question: Question.third
  }
]

answer_data.each do |answer|
  Answer.create(answer)
end
