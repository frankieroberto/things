class CreateTypeOfThings < ActiveRecord::Migration
  def self.up
    create_table :type_of_things do |t|
      t.string :name
      t.integer :things_count

      t.timestamps
    end
  end

  def self.down
    drop_table :type_of_things
  end
end
