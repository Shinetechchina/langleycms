class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests, :force => true do |t|#这里加上:force => true可以解决db:migrate时，Table already exist 的问题
      t.string :name
      t.string :title

      t.timestamps
    end
  end
end
