class UsersController < ApplicationController

	def new
		@user = User.new
	end
	def create
		@user = User.new
		@user.name = params[:user][:name]
		@user.email = params[:user][:email]
		@user.password = params[:user][:password]
		@user.password_confirmation = params[:user][:password_confirmation]

		if @user.save
			flash[:notice] = "Welcome to Bloccit, #{@user.name+"san"}"
			redirect_to root_path
		else
			flash.now[:alert] = "There was an error with your sign up buddy!"
			render :new
		end
	end

	def confirm 
		@user = User.new
		@user.name = params[:user][:name]
		@user.email = params[:user][:email]
		@user.password = params[:user][:password]
		@user.password_confirmation = params[:user][:password_confirmation]

		if @user.save
			flash[:notice] = "Data confirmed."
			redirect_to root_path
		else
			flash.now[:alert] = "There was an error with your data confirmation."
			render :new
		end
	end

end