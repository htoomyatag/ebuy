class CreateWishLists < ActiveRecord::Migration
  def change
    create_table :wish_lists do |t|
      t.integer :product_id
      t.integer :buyer_id
      t.string :product_name
      t.text :description

      t.timestamps null: false
    end
  end
end
