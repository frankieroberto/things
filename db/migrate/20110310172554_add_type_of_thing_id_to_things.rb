class AddTypeOfThingIdToThings < ActiveRecord::Migration
  def self.up
    add_column :things, :type_of_thing_id, :integer
  end

  def self.down
    remove_column :things, :type_of_thing_id
  end
end
