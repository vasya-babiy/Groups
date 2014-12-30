class PrivateGroupsController < ApplicationController
	def index
		@private_groups = PrivateGroup.all
	end

	def new
		@private_group = PrivateGroup.new
	end

	def show
		@private_group = PrivateGroup.find(params[:id])
	end

	def edit
		@private_group = PrivateGroup.find(params[:id])
	end

	def create
		@private_group = PrivateGroup.new(params[:private_group])
		if @private_group.save
			redirect_to @private_group
		else
			render 'new'
		end
	end

	def update
		@private_group = PrivateGroup.find(params[:id])
		respond_to do |format|
			if @private_group.update_attributes(params[:private_group])
				format.html	{redirect_to @private_group}
				format.js {}
			else
				format.html {render 'edit'}
			end
		end
	end

end
