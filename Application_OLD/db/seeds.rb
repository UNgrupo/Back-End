# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# poblar base de datos usando gem FAKER
100.times do
  Answer.create([{
    answerable_type: Answer,
    answerable_id:Faker::Number.number(5),
    idAnswer:Faker::Number.number(5),
    Description: Faker::String.random(24),
    Qualification:Faker::Number.number(2),
    Date:Faker::Date.forward(10)
  }])
end


100.times do
  Comment.create([{
      commentable_type: Comment,
      commentable_id:Faker::Number.number(5),
      idComment:Faker::Number.number(5),
      Description:Faker::String.random(24),
      Date: Faker::Date.forward(10)
  }])
end

100.times do
  Question.create([{
      questionable_type: Question,
      questionable_id: Faker::Number.number(5),
      idQuestion: Faker::Number.number(5),
      Title:Faker::String.random(20),
      Description:Faker::String.random(24),
      Date:Faker::Date.forward(10)
  }])
end

100.times do
  Theme.create([{
      idTheme:Faker::Number.number(5),
      Name:Faker::Number.number(7),
      Questions_number:Faker::Number.number(3),
      idMatter:Faker::Number.number(5)
  }])
end

100.times do
  User.create([{
      idUser: Faker::Number.number(5),
      Name: Faker::Name.name_with_middle,
      Level: Faker::Number.number(2),
      Reputation: "high",
      Role: "user",
      Followers_number: Faker::Number.number(3),
      idStat: Faker::Number.number(5)
  }])
end


#100.times do
#  Document.create(
#    :idDocument:
#    :Title:
#  )
#end

#100.times do
#  Matter.create(
#    idMatter:
#    Name:
#    Themes_number:
#  )
#end

#100.times do
#  Photo.create(
#    idPhoto:
#    Title:
#    idUser:
#  )
#end

#100.times do
#  Stat.create(
#    idStat:
#    Points:
#    Questions_number:
#    Answers_number:
#    Best_Answers:
#  )
#end
