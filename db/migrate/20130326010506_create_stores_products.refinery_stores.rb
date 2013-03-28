# This migration comes from refinery_stores (originally 1)
class CreateStoresProducts < ActiveRecord::Migration

  def up
    create_table Refinery::Stores::Product.table_name do |t|
      t.string :title
      t.text :description
      t.references :image
      t.references :category
      t.datetime :available_on
      t.integer :count_on_hand
      t.string :permalink
      t.string :meta_description
      t.datetime :deleted_at

      t.timestamps
    end

    Refinery::Stores::Product.create_translation_table! :title => :string, :description => :text

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-stores"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/stores"})
    end

    drop_table :refinery_products

    Refinery::Stores::Product.drop_translation_table!

  end

end
