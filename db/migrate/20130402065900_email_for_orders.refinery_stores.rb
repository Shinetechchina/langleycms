# This migration comes from refinery_stores (originally 20130328032407)
# This migration comes from spree (originally 20100903203949)
class EmailForOrders < ActiveRecord::Migration
  def change
    add_column :orders, :email, :string
  end
end
