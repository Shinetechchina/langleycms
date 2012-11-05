class CreateRooms < ActiveRecord::Migration
  def self.up
    create_table :rooms do |t|
      t.integer :room_num,  :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :rooms
  end
end
