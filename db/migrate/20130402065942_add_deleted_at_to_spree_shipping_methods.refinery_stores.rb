# This migration comes from refinery_stores (originally 20130328032449)
# This migration comes from spree (originally 20120604030249)
class AddDeletedAtToSpreeShippingMethods < ActiveRecord::Migration
  def change
    add_column :spree_shipping_methods, :deleted_at, :datetime
  end
end
