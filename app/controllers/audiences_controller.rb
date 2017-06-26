class AudiencesController < ApplicationController
	def create
		@audience = Audience.new(params.require(:audience).permit(:name, :age))
		if @audience.save 
			redirect_to root_path
		end
	end
end
