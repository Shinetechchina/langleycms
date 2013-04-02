# This migration comes from refinery_stores (originally 20130328032417)
# This migration comes from spree (originally 20101026184932)
class PreventNilEmail < ActiveRecord::Migration
  def up
    execute "UPDATE orders SET email = 'guest@example.com' WHERE email IS NULL"
    execute "UPDATE orders SET email = 'guest@example.com' WHERE email = ''"
  end

  def down
  end
end
