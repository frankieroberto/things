class CreateThings < ActiveRecord::Migration
  def self.up
    create_table :things do |t|
      t.string :ref
      t.text :name
      t.text :title
      t.text :maker
      t.string :date_made
      t.string :place_made
      t.text :materials
      t.string :measurements
      t.text :description
      t.string :whole_part
      t.string :collection

      t.timestamps
    end
  end

  def self.down
    drop_table :things
  end
end
