class AddIndexToTypesOfThing < ActiveRecord::Migration
  def self.up
    add_index :types_of_thing, :name, :unique => true
  end

  def self.down
    remove_index :types_of_thing, :name
  end
end