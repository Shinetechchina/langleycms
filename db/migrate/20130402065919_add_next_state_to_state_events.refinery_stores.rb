# This migration comes from refinery_stores (originally 20130328032426)
# This migration comes from spree (originally 20110110130847)
class AddNextStateToStateEvents < ActiveRecord::Migration
  def change
    add_column :state_events, :next_state, :string
  end
end
