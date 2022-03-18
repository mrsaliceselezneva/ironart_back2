# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

create_next_questions = Create_next_question.create([{number: 1}])

questions = Question.create([{ title: 'q1'}, { title: 'q2'}])

Answer.create(body: 'a1', question: questions.first)