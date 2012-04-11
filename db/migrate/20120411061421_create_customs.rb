class CreateCustoms < ActiveRecord::Migration
  def self.up
    create_table :customs do |t|
      t.integer :number_of_adults
      t.integer :number_of_children
      t.string :Email

      t.timestamps
    end
  end

  def self.down
    drop_table :customs
  end
end
