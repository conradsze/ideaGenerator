class AddDefaultToIdea < ActiveRecord::Migration
  def change
  	change_column_default(:ideas, :upvote, 0)
  end
end
