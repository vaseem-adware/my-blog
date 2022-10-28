class Admin::SessionsController < Admin::ApplicationController
	before_action :logged_in, except: [:destroy]
	before_action :authorize, except: [:new, :create]

	def new
	end
		
	def create
		@user = User.find_by(email: params[:email])
			if @user && @user.authenticate(params[:password])
				session[:user_id] = @user.id
				flash[:notice] = "You have been successfully logged in!"
				redirect_to admin_user_path(@user) 
			else
				flash[:alert] = "wrong email or password!!"
				render :new
			end
	end

	def destroy
		session[:user_id] = nil
		flash[:notice] = "You have successfully been logged out!"
		redirect_to new_admin_session_path
	end
end
