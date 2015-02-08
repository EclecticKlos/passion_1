enable :sessions

get "/" do
  redirect "/login"
end

get '/login' do
  erb :login
end

post '/login' do
  user = User.find_by(username: params[:username])
  if user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect "/#{user.id}"
  else
    redirect "/login"
  end
end

get '/:user/skill_select' do
  @user_id = session[:user_id]
  @skills = (Skill.all - Skill.where(skill_name: NIL)) # TO DO......
  erb :skill_select
end

post '/:user/skill_select' do
  #p Skill.create(skill_name: params[:skill_name], user_id: session[:user_id])
  #for i in 0..16 do
  #  Skill.create(skill_name: params[i], user_id: session[:user_id])
  #end

  p
  redirect "/#{session[:user_id]}"
end

get '/:user' do
  @user = User.find(session[:user_id])
  puts "=" * 50
  puts "User ID: #{@user.id}"
  puts "User name: #{@user.username}"
  puts "=" * 50
  @skills = @user.skills
  puts "Skill cnt: #{@skills.count}"
  erb :user
end

# get '/users/:id/skill_select/:skill_id'


# <% User.find_by(id: session[:user_id]) %>
