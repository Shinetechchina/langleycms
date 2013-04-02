# This migration comes from refinery_stores (originally 20130328032416)
# This migration comes from spree (originally 20101026184916)
class PreventNilPaymentTotal < ActiveRecord::Migration
  def up
    execute "UPDATE orders SET payment_total = 0.0 WHERE payment_total IS NULL"
  end

  def down
  end
end
