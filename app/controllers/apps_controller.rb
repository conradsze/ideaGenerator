class AppsController < ApplicationController
	def create
		@app = App.new(params.require(:app).permit(:name, :age))
		if @app.save 
			redirect_to root_path
		end
	end
end
