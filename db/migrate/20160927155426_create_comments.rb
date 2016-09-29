class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :product_name
      t.text :buyer_comment
      t.integer :buyer_id

      t.timestamps null: false
    end
  end
end
