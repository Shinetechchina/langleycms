# This migration comes from refinery_stores (originally 20130328032375)
# This migration comes from spree (originally 20100121183934)
class OriginalCreditcardTxnIdForCreditcardTxns < ActiveRecord::Migration
  def change
    add_column :creditcard_txns, :original_creditcard_txn_id, :integer
  end
end
