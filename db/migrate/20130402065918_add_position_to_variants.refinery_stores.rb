# This migration comes from refinery_stores (originally 20130328032425)
# This migration comes from spree (originally 20101223215658)
class AddPositionToVariants < ActiveRecord::Migration
  def change
    add_column :variants, :position, :integer
  end
end
