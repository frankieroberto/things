class RenameTypeOfThings < ActiveRecord::Migration
  def self.up
    rename_table :type_of_things, :types_of_thing
  end

  def self.down
    rename_table :types_of_thing, :type_of_things
  end
end