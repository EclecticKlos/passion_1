get "/" do
  if session[:user_id]
    redirect_authenticated_user!
  else
    redirect "/login"
  end
end

get '/invalid_url' do
  "the url you entered is invalid"
end

