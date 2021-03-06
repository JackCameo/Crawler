class UsersController < ApplicationController
  	def show
		@user = User.find(params[:id])
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])
		if @user.save
			# Handle a successful save.
			flash[:success] = "User added to crawler!"
			redirect_to @user
		else
			render 'new'
		end
	end
end
