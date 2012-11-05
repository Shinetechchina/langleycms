class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :person do |t|
      t.string :first_name,   :null => false
      t.string :family_name,  :null => false
      t.boolean :is_child,    :null => false
      t.integer :age

      t.timestamps
    end
  end

  def self.down
    drop_table :person
  end
end
