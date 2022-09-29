class Admin::ApplicationController < ActionController::Base
	layout "admin"
	before_action :authorize
	helper_method :current_user

	def current_user
		@user = User.find(session[:user_id]) if session[:user_id]
	end

 #if there is no current user(means there is no session) 
 #then go and create a new session first
	def authorize
		unless current_user
			flash[:notice] = "Please login to continue!"
			redirect_to new_admin_session_path
		end
	end
 
	private

	def logged_in
		if current_user 
			flash[:notice] = "You are already logged in!"
			redirect_to admin_user_path(current_user)
		end
	end
end
