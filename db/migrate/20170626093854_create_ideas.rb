class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.integer :upvote

      t.timestamps null: false
    end
  end
end
