class ApplicationController < ActionController::Base

 protect_from_forgery with: :exception

helper_method :user_logged_in, :current_user
 def user_logged_in
 return session[:user_id]
 end

 def current_user
 	if user_logged_in
 		user=User1.find_by_id(session[:user_id])
 		return user
 	else
 		return redirect_to '/signin'
 	end


end







end
