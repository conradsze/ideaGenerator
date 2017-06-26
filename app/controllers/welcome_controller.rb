class WelcomeController < ApplicationController
  def index
  	@idea = Idea.new(app:App.order("RANDOM()").first, audience:Audience.order("RANDOM()").first)
  	@app = App.new
  	@audience = Audience.new
  end
end
