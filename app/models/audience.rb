class Audience < ActiveRecord::Base
	has_many :ideas

	validates :name, presence: true 
end
