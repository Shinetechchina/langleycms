class CreateTrips < ActiveRecord::Migration
  def self.up
    create_table :trips do |t|
      t.string :trip_have_num

      t.timestamps
    end
  end

  def self.down
    drop_table :trips
  end
end
