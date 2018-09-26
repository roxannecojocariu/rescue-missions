# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(email:"cooldude@launchacademy.com", password: "gregsucks")
user2 = User.create(email:"yesman@launchacademy.com", password: "gregsucks")
user3 = User.create(email:"whatsup@launchacademy.com", password: "gregsucks")

question_data = [
  {
    title: "Why can't I figure out faker?",
    description: "I would love to be able to not have to hand write all of these questions, but I don't know how to fix this.",
    user: user1
  },
  {
    title: "How much would I get if I give someone my liver?",
    description: "I'm really broke and looking for a way to make some extra cash, but I don't want anyone to judge me.  Can someone please help me?",
    user: user2
  },
  {
    title: "What is this thing called life?",
    description: "I'm not sure that I am living a very fulfilled life and hope that I can change this so I'm living life to the fullest.  Plz help.",
    user: user3
  }
]

question_data.each do |question|
  Question.create(question)
end

answer_data = [
  {
    description: "If you want the answer to this question, you will have to spin around 10 times and then cluck like a chicken.",
    user: user1,
    question: Question.first
  },
  {
    description: "Hopefully this works because I can safely say that I KIND OF know what's going on, but as always, I'm not quite there.",
    user: user1,
    question: Question.second
  },
  {
    description: "I'm trying to figure this out the best that I can.  Hopefully this works because I can safely say that I KIND OF know what's going on, but as always, I'm not quite there.",
    user: user2,
    question: Question.first
  },
  {
    description: "Let's see what happens here.  I'm trying to figure this out the best that I can.  Hopefully this works because I can safely say that I KIND OF know what's going on, but as always, I'm not quite there.",
    user: user2,
    question: Question.third
  }
]

answer_data.each do |answer|
  Answer.create(answer)
end
