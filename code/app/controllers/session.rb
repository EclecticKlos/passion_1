get '/login' do
  redirect_authenticated_user!
  erb :login
end

post '/login' do
  user = User.find_by(username: params[:username])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect_authenticated_user!
  else
    session[:errors] = 'invalid login, please try again or go outside'
    redirect "/login"
  end
end
