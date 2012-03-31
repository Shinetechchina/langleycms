class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :choice
      t.string :location
      t.string :number_weeks
      t.string :number_adults
      t.string :number_children

      t.timestamps
    end
  end
end
