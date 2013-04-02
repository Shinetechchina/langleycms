# This migration comes from refinery_stores (originally 20130328032409)
# This migration comes from spree (originally 20100929151905)
class RenameFrozenToLocked < ActiveRecord::Migration
  def change
    rename_column :adjustments, :frozen, :locked
  end
end
