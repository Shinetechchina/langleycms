class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :person do |t|
      t.string :first_name
      t.string :family_name
      t.boolean :is_child
      t.integer :age

      t.timestamps
    end
  end

  def self.down
    drop_table :person
  end
end
