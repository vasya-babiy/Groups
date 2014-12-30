class UsersController < ApplicationController
	def index
		@users = User.all
		@pictures = @user.pictures
		respond_to do |format|
      format.html
      format.js
    end   
	end

	def new
		@user = User.new
	end

	def show
		@user = User.find(params[:id])
		respond_to do |format|
      format.html
      format.js
    end   
	end

	def edit
		@user = User.find(params[:id])
	end

	def create
		@user = User.new(params[:user])
		if @user.save
			redirect_to @user
		else
			render 'new'	
		end	
	end

	def update
		@user = User.find(params[:id])
		respond_to do |format|
			if @user.update_attributes(params[:user])
				format.html { redirect_to user_path }
				format.js {}
			else
				format.html { render action: "edit" }
			end
		end
	end

end
