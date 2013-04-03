# This migration comes from refinery_stores (originally 20130328032435)
# This migration comes from spree (originally 20111216154844)
class AddIncTaxToTaxRates < ActiveRecord::Migration
  def change
    add_column :spree_tax_rates, :inc_tax, :boolean, :default => false
  end
end
