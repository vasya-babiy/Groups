class PublicGroupsController < ApplicationController
	def index
		@public_groups = PublicGroup.all
	end

	def new
		@public_group = PublicGroup.new
	end

	def show
		@public_group = PublicGroup.find(params[:id])
	end

	def edit
		@public_group = PublicGroup.find(params[:id])
	end

	def create
		@public_group = PublicGroup.new(params[:public_group])
		if @public_group.save
			redirect_to @public_group
		else
			render 'new'
		end
	end

	def update
		@public_group = PublicGroup.find(params[:id])

		respond_to do |format|
			if @public_group.update_attributes(params[:public_group])
				format.html { redirect_to @public_group }
				format.js {}
			else
				format.html { render 'new' }
			end
		end
	end

end
