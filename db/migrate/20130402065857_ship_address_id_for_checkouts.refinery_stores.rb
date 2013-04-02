# This migration comes from refinery_stores (originally 20130328032364)
# This migration comes from spree (originally 20091211203813)
class ShipAddressIdForCheckouts < ActiveRecord::Migration
  def change
    add_column :checkouts, :ship_address_id, :integer
  end
end
