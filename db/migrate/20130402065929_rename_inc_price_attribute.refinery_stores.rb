# This migration comes from refinery_stores (originally 20130328032436)
# This migration comes from spree (originally 20111219203242)
class RenameIncPriceAttribute < ActiveRecord::Migration
  def change
    rename_column :spree_tax_rates, :inc_tax, :included_in_price
  end
end
