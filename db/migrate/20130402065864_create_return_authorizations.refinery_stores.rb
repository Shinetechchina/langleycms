# This migration comes from refinery_stores (originally 20130328032371)
# This migration comes from spree (originally 20100112151511)
class CreateReturnAuthorizations < ActiveRecord::Migration
  def change
    create_table :return_authorizations do |t|
      t.string :number, :state
      t.decimal :amount, :precision => 8, :scale => 2, :default => 0.0, :null => false
      t.references :order
      t.text :reason

      t.timestamps
    end
  end
end
