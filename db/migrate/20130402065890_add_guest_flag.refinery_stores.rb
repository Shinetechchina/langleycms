# This migration comes from refinery_stores (originally 20130328032397)
# This migration comes from spree (originally 20100811163637)
class AddGuestFlag < ActiveRecord::Migration
  def change
    unless defined?(User)
      add_column :users, :guest, :boolean
    end
  end
end
