class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.string :actual_price
      t.string :discount_price
      t.integer :quantity
      t.text :specs
      t.string :product_category
      t.string :pick_up
      t.string :ebuy_delivery
      t.string :delivery_time
      t.string :start_to_sell_on, :date
      t.text :product_video
      t.string :product_size
      t.string :product_color
      t.string :delivery_rate
      t.string :end_on, :date
      t.string :product_subcategory


      t.timestamps null: false
    end
  end
end
