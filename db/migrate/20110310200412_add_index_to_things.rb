class AddIndexToThings < ActiveRecord::Migration
  def self.up
    add_index :things, :ref, :unique => true
  end

  def self.down
    remove_index :things, :ref
  end
end