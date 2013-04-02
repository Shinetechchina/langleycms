# This migration comes from refinery_stores (originally 20130328032361)
# This migration comes from spree (originally 20091126190904)
class CheckoutStateMachine < ActiveRecord::Migration
  def change
    add_column :checkouts, :state, :string
  end
end
