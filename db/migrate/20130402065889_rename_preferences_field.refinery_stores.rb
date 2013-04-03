# This migration comes from refinery_stores (originally 20130328032396)
# This migration comes from spree (originally 20100624175547)
class RenamePreferencesField < ActiveRecord::Migration
  def change
    rename_column :preferences, :attribute, :name
  end
end
