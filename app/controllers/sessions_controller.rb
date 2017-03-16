class SessionsController < ApplicationController
# We need new, create and destroy actions for our Sessions Controller
	def new
		# Reckon we don't have to add anything here since the
		# session hash is created automatically by rails.
	end

	def create 
		user = User.find_by(email: params[:session][:email].downcase)

		if user && user.authenticate(params[:session][:password])
			create_session(user)
			flash[:notice] = "Welcome, #{user.name}!"
			redirect_to root_path
		else
			flash.now[:alert] = 'Invalid email/password combination'
			render :new
		end
	end

	def destroy
		flash[:notice] = "You've been signed out, come back soon!"
		redirect_to root_path	
	end

end