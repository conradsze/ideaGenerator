class AudiencesController < ApplicationController
	def index
		@audiences = Audience.all.order(:name)
	end

	def create
		@audience = Audience.new(params.require(:audience).permit(:name))
		if @audience.save 
			redirect_to root_path
		else
			redirect_to root_path
		end
	end

	def update
		@audience = Audience.find(params[:id])
		@audience.update(params.require(:audience).permit(:name))
		
		redirect_to audiences_path
		
	end
	def destroy
		@audience = Audience.find(params[:id])
		@audience.ideas.destroy_all
		@audience.destroy
		
		redirect_to audiences_path
		
	end
end
