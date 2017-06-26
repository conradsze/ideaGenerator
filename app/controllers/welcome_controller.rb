class WelcomeController < ApplicationController
  def index
  	@idea = Idea.new(app:App.order("RANDOM()").first, audience:Audience.order("RANDOM()").first)
  end
end
