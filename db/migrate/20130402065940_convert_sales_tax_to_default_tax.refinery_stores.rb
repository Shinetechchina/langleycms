# This migration comes from refinery_stores (originally 20130328032447)
# This migration comes from spree (originally 20120523061241)
class ConvertSalesTaxToDefaultTax < ActiveRecord::Migration
  def up
    execute "UPDATE spree_calculators SET type='Spree::Calculator::DefaultTax' WHERE type='Spree::Calculator::SalesTax'"
  end

  def down
    execute "UPDATE spree_calculators SET type='Spree::Calculator::SalesTax' WHERE type='Spree::Calculator::DefaultTax'"
 end
end
