class CreateRoomTypes < ActiveRecord::Migration
  def self.up
    create_table :room_types do |t|
      t.integer :nuber_of_people, :null => false
      t.decimal :price,           :null => false, :precision => 8, :scale => 3
      t.string :level,            :null => false
      t.text :description
      t.integer :have_num,        :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :room_types
  end
end
