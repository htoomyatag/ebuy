class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :actual_price
      t.string :discount_price
      t.integer :quantity
      t.text :specs
      t.string :product_category


      t.timestamps null: false
    end
  end
end
