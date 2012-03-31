class CreatePostTests < ActiveRecord::Migration
  def change
    create_table :post_tests do |t|
      t.string :name
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
