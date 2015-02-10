# ------------------------
# CREATE
# ------------------------
# get '/users/new' do
#   "show form to create a new skill"
# end

# post '/users' do
#   "a new skill was just created!"
# end

# ------------------------
# READ
# ------------------------
# get '/users' do
#   "list all users available in the system"
# end

get '/users/:id' do
# get %r[/users/(\d+)] do
  redirect_unless_authorized!(params[:user_id])

  @user = User.find(session[:user_id])
  puts "=" * 50
  puts "User ID: #{@user.id}"
  puts "User name: #{@user.username}"
  puts "=" * 50
  @skills = @user.skills
  puts "Skill cnt: #{@skills.count}"
  erb :user
end

# ------------------------
# UPDATE
# ------------------------
# get '/users/:id/edit' do
#   "show form to edit an existing skill"
# end

# put '/users/:id' do
#   "a skill was just updated!"
# end

# ------------------------
# DELETE
# ------------------------
# delete '/users/:id' do
#   "delete a skill"
# end

# ------------------------
# Skill Management
# ------------------------

before '/user/skills' do
  redirect_unless_authorized!
end

get '/user/skills' do
  user_id = session[:user_id]
  # @skills = (Skill.all - Skill.where(skill_name: NIL)) # TO DO......
  @skills = Skill.all
  erb :skill_select
end

post '/user/skills' do

end

