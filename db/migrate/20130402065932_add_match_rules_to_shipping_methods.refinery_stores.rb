# This migration comes from refinery_stores (originally 20130328032439)
# This migration comes from spree (originally 20120105195817)
class AddMatchRulesToShippingMethods < ActiveRecord::Migration
  def change
    add_column :spree_shipping_methods, :match_none, :boolean
    add_column :spree_shipping_methods, :match_all, :boolean
    add_column :spree_shipping_methods, :match_one, :boolean
  end
end
