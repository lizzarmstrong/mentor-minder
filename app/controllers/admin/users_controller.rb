class Admin::UsersController < ApplicationController
	before_action :set_user, only: [:show, :edit, :update, :destroy]

	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save 
			flash[:notice] = "Successfully created new user"
		else
			flash[:notice] = "Save failed"
		end
		redirect_to admin_users_path

	end

	def show
	end

	def edit
	end

	def update
		if params[:user][:password].blank? && params[:user][:password_confirmation].blank?
    		params[:user].delete(:password)
    		params[:user].delete(:password_confirmation)
		end
		
		if @user.update(user_params) 
			flash[:notice] = "Update successful"
		else 
			flash[:notice] = "Update failed"
		end
		redirect_to admin_users_path
	end

	def destroy

	end

	private

	def set_user
      @user = User.find(params[:id])
    end

	def user_params
      params.require(:user).permit(:username, :email, :password)
    end
end