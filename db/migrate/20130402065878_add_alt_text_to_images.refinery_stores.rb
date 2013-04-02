# This migration comes from refinery_stores (originally 20130328032385)
# This migration comes from spree (originally 20100317120946)
class AddAltTextToImages < ActiveRecord::Migration
  def change
    add_column :assets, :alt, :text
  end
end
