# This migration comes from refinery_stores (originally 20130328032454)
# This migration comes from spree_promo (originally 20100501084722)
class MatchPolicyForPromotions < ActiveRecord::Migration
  def change
    add_column :promotions, :match_policy, :string, :default => 'all'
  end
end
