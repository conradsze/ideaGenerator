class AddAudienceToIdeas < ActiveRecord::Migration
  def change
    add_reference :ideas, :audience, index: true, foreign_key: true
  end
end
