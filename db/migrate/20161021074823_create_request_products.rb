class CreateRequestProducts < ActiveRecord::Migration
  def change
    create_table :request_products do |t|
      t.string :title
      t.string :actual_price
      t.string :discount_price
      t.integer :quantity
      t.text :specs
      t.string :product_category
      t.string :pick_up
      t.string :ebuy_delivery
      t.string :delivery_time
      t.string :start_to_sell_on

      t.timestamps null: false
    end
  end
end
