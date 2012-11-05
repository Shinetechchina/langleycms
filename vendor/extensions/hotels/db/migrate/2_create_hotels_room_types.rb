class CreateHotelsRoomTypes < ActiveRecord::Migration

  def up
    create_table :refinery_hotels_room_types, :force => true  do |t|
      t.integer :hotel_id
      t.string :name
      t.integer :contain_num
      t.decimal :price, :precision => 8, :scale => 2, :default => 0
      t.string :level
      t.integer :left_rooms
      t.integer :sum_rooms
      t.text :description
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-hotels"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/hotels/room_types"})
    end

    drop_table :refinery_hotels_room_types

  end

end
