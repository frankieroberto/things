class AddNoIdeaCountToThings < ActiveRecord::Migration
  def self.up
    add_column :things, :no_idea_count, :integer
  end

  def self.down
    remove_column :things, :no_idea_count
  end
end
