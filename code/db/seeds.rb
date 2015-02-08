require 'faker'

10.times do
  temp_name = Faker::Internet.user_name
  User.create(username: temp_name, password: temp_name, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

10.times do
  Skill.create(skill_name: Faker::Lorem.sentence)
end
