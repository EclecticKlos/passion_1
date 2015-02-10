helpers do
  def redirect_unless_authorized!
    redirect '/login' if session[:user_id].blank?
  end

  def redirect_authenticated_user!
    redirect '/user' unless session[:user_id].blank?
  end
end
