class ChangeColumnTypesToText < ActiveRecord::Migration
  def self.up
    change_column :things, :ref, :text
    change_column :things, :date_made, :text
    change_column :things, :place_made, :text
    change_column :things, :measurements, :text
  end

  def self.down
    change_column :things, :ref, :string
    change_column :things, :date_made, :string
    change_column :things, :place_made, :string
    change_column :things, :measurements, :string    
  end
end