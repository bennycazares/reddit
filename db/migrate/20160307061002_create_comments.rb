class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment_text
      t.integer :post_id

      t.timestamps null: false
    end
  end
end
