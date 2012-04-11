class CreateBusinessDays < ActiveRecord::Migration
  def self.up
    create_table :business_days do |t|
      t.date :start_day
      t.date :end_day

      t.timestamps
    end
  end

  def self.down
    drop_table :business_days
  end
end
