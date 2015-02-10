# ------------------------
# CREATE
# ------------------------
# get '/skills/new' do
#   "show form to create a new skill"
# end

# post '/skills' do
#   "a new skill was just created!"
# end

# ------------------------
# READ
# ------------------------
get '/skills' do
  "list all skills available in the system"
end

# get '/skills/:id' do
# # get %r[/skills/(\d+)] do
#   "list details about skill with id = #{params[:id]}"
# end


# ------------------------
# UPDATE
# ------------------------
# get '/skills/:id/edit' do
#   "show form to edit an existing skill"
# end

# put '/skills/:id' do
#   "a skill was just updated!"
# end

# ------------------------
# DELETE
# ------------------------
# delete '/skills/:id' do
#   "delete a skill"
# end







post '/:user/skill_select' do
  #p Skill.create(skill_name: params[:skill_name], user_id: session[:user_id])
  #for i in 0..16 do
  #  Skill.create(skill_name: params[i], user_id: session[:user_id])
  #end

  p
  redirect "/#{session[:user_id]}"
end
