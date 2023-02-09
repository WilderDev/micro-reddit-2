class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)

		if @user.save
			session[:user_id] = @user.id
			redirect_to @user
		else
			render "new", status: :unprocessable_entity
		end
	end

	def show
		@user = User.find(session[:user_id])

		if @user
			render "show"
		else
			redirect_to root_path, status: :unprocessable_entity
		end
	end

	private

	def user_params
		params.require(:user).permit(:username, :email)
	end
end