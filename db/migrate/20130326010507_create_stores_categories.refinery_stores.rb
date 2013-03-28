# This migration comes from refinery_stores (originally 2)
class CreateStoresCategories < ActiveRecord::Migration

  def up
    create_table Refinery::Stores::Category.table_name do |t|
      t.string :name

      t.timestamps
    end

  end

  def down

    drop_table Refinery::Stores::Category.table_name

  end

end
