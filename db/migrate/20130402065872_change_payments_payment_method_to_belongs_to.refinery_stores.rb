# This migration comes from refinery_stores (originally 20130328032379)
# This migration comes from spree (originally 20100213103131)
class ChangePaymentsPaymentMethodToBelongsTo < ActiveRecord::Migration
  def up
    remove_column :payments, :payment_method
    add_column    :payments, :payment_method_id, :integer
  end

  def down
    add_column    :payments, :payment_method, :string
    remove_column :payments, :payment_method_id
  end
end
