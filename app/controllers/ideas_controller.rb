class IdeasController < ApplicationController
	def index
		@ideas = Idea.all.order(upvote: :desc)
	end

	def create
		@app = App.find(params[:app_id])
		@audience = Audience.find(params[:audience_id])
		@idea = Idea.create(app:@app, audience:@audience)
		redirect_to root_path

	end

	def destroy
		@idea = Idea.find(params[:id])
		@idea.destroy
		
		redirect_to ideas_path
		
	end
end
