class AddAppToIdeas < ActiveRecord::Migration
  def change
    add_reference :ideas, :app, index: true, foreign_key: true
  end
end
