class CommunitiesController < ApplicationController
	def index
		@communities = Community.all
	end

	def show
		@community = Community.find(params[:id])
	end

	def new
		@community = Community.new
	end

	def create
		@community = Community.new(community_params)

		if @community.save
			redirect_to @community
		else
			render 'new', status: :unprocessable_entity
		end
	end

	private 
	
	def community_params
		params.require(:community).permit(:name, :creator_id)
	end
end