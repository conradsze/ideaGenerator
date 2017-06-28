class AppsController < ApplicationController
	def index
		@apps = App.all.order(:name)
	end

	def create
		@app = App.new(params.require(:app).permit(:name))
		if @app.save 
			redirect_to root_path
		else
			redirect_to root_path
		end
	end

	def update
		@app = App.find(params[:id])
		@app.update(params.require(:app).permit(:name))
		
		redirect_to apps_path
		
	end
	def destroy
		@app = App.find(params[:id])
		@app.ideas.destroy_all
		@app.destroy
		
		redirect_to apps_path
		
	end
end
