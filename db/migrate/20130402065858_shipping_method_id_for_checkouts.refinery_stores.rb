# This migration comes from refinery_stores (originally 20130328032365)
# This migration comes from spree (originally 20091212161118)
class ShippingMethodIdForCheckouts < ActiveRecord::Migration
  def change
    add_column :checkouts, :shipping_method_id, :integer
  end
end
