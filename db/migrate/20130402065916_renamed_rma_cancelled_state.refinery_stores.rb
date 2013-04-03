# This migration comes from refinery_stores (originally 20130328032423)
# This migration comes from spree (originally 20101111133551)
class RenamedRmaCancelledState < ActiveRecord::Migration
  def up
    execute "UPDATE return_authorizations SET state = 'canceled' WHERE state = 'cancelled'"
  end

  def down
    execute "UPDATE return_authorizations SET state = 'cancelled' WHERE state = 'canceled'"
  end
end
