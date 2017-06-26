class Idea < ActiveRecord::Base
	belongs_to :app
	belongs_to :audience
end
