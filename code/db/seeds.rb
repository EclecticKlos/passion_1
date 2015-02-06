require 'faker'

10.times do
  User.create(username: Faker::Internet.user_name, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

10.times do
  Skill.create(skill_name: Faker::Lorem.sentence)
end
