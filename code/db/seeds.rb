require 'faker'

10.times do
  User.new(username: Faker::Internet.user_name, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)

10.times do
  Skill.new(skill_name: Faker::Lorem.sentence)
