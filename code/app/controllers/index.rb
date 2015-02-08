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
    redirect "/#{user.username}"
  else
    redirect "/login"
  end
end

get '/:user' do
  @user = User.find(session[:user_id])

  erb :user
end

