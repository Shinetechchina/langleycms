# This migration comes from refinery_stores (originally 20130328032450)
# This migration comes from spree (originally 20120604203654)
class RemoveCreditTotalFromOrders < ActiveRecord::Migration
  def change
    remove_column :spree_orders, :credit_total
  end
end
