# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

it = 1

5.times do
  Subject.new(
      "name":Faker::Lorem.word,
      "number_of_topics":Faker::Number.number(3)
  ).save
end

50.times do
  User.new(
      "name":Faker::Name.name,
      "email":Faker::Internet.unique.email,
      "usern":Faker::Name.name,
      "password": Faker::Alphanumeric.alphanumeric(25),
      "level":Faker::Number.number(3),
      "reputation":Faker::LeagueOfLegends.rank,
      "role":"student",
      "number_of_followers":Faker::Number.number(3),
  ).save
  Statistic.new(
      "points":Faker::Number.number(3),
      "number_of_answers":Faker::Number.number(3),
      "number_of_questions":Faker::Number.number(3),
      "number_of_best_answers":Faker::Number.number(3),
      "user_id":it
  ).save
  it = it + 1
end

it = 1
2.times do
  Topic.new(
      "name":Faker::Lorem.word,
      "subject_id":it
  ).save
  it = it + 1
end

it = 1
it2 = 1
100.times do
  it2 = 1
  2.times do
    Question.new(
        "title":Faker::Lorem.sentence,
        "description":Faker::Lorem.sentence,
        "date":Faker::Date.forward(10),
        "user_id":it,
        "topic_id":it2
    ).save
    it2 = it2 + 1
  end
  it = it +1
end

it = 1
it2 = 1
50.times do
  2.times do
    Answer.new(
        "description":Faker::Lorem.sentence,
        "qualification":Faker::Number.number(2),
        "date":Faker::Date.forward(10),
        "user_id":it2,
        "question_id":it
    ).save
    Comment.new(
        "description":Faker::Lorem.sentence,
        "date":Faker::Date.forward(10),
        "user_id":it2,
        "answer_id":it2
    ).save
    it = it + 1
  end
  it2 = it2 + 1
end

#it = 1
#10.times do
#  Document.new(
#      "name", null: false
#      "type", null: false
#      "extension", null: false
#      "path", null: false
#      "title":Faker::Lorem.sentence,
#      "user_id":it,
#      "question_id":it
#  ).save
#  it = it + 1
#end
Document.new(
    "name":"como hacer integracion por partes",
    "type_file":"texto",
    "extension":"pdf",
    "path":"/",
    "user_id":1,
    "question_id":1
).save

Document.new(
    "name":"Como hacer integracion de funciones trigonometricas",
    "type_file":"texto",
    "extension":"pdf",
    "path":"/",
    "user_id":2,
    "question_id":2
).save

Document.new(
    "name":"Aplicando el teorema de pitagoras",
    "type_file":"texto",
    "extension":"pdf",
    "path":"/",
    "user_id":3,
    "question_id":3
).save

Document.new(
    "name":"Desviacion estandar",
    "type_file":"imagen",
    "extension":"png",
    "path":"/",
    "user_id":4,
    "question_id":4
).save

Document.new(
    "name":"Todo sobre la via lactea",
    "type_file":"texto",
    "extension":"pdf",
    "path":"/",
    "user_id":5,
    "question_id":5
).save

Document.new(
    "name":"La republica de platon",
    "type_file":"texto",
    "extension":"docx",
    "path":"/",
    "user_id":6,
    "question_id":6
).save

Document.new(
    "name":"Knock, a simple guide",
    "type_file":"texto",
    "extension":"pdf",
    "path":"/",
    "user_id":7,
    "question_id":7
).save

Document.new(
    "name":"ruby on rails in 24 hours",
    "type_file":"texto",
    "extension":"pdf",
    "path":"/",
    "user_id":8,
    "question_id":8
).save

Document.new(
    "name":"IoT a full guide",
    "type_file":"texto",
    "extension":"pdf",
    "path":"/",
    "user_id":9,
    "question_id":9
).save

Document.new(
    "name":"Oferta vs Demanda",
    "type_file":"texto",
    "extension":"pdf",
    "path":"/",
    "user_id":10,
    "question_id":10
).save
