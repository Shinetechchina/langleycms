# This migration comes from refinery_stores (originally 20130328032400)
# This migration comes from spree (originally 20100813023502)
class CreateAddressKeysForOrder < ActiveRecord::Migration
  def change
    add_column :orders, :bill_address_id, :integer
    add_column :orders, :ship_address_id, :integer
  end
end