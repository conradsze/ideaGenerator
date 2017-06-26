class AudiencesController < ApplicationController
	def index
		@audiences = Audience.all
	end

	def create
		@audience = Audience.new(params.require(:audience).permit(:name, :age))
		if @audience.save 
			redirect_to root_path
		else
			redirect_to root_path
		end
	end
end
