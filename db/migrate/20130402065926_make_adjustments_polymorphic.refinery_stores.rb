# This migration comes from refinery_stores (originally 20130328032433)
# This migration comes from spree (originally 20111201024007)
class MakeAdjustmentsPolymorphic < ActiveRecord::Migration

  def change
    add_column :spree_adjustments, :adjustable_type, :string
    rename_column :spree_adjustments, :order_id, :adjustable_id
    execute "UPDATE spree_adjustments SET adjustable_type = 'Spree::Order'"
  end

end
