class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :buyer_id
      t.string :guest
      t.string :buyer_name
      t.string :buyer_email
      t.string :buyer_phone
      t.string :buyer_township
      t.string :buyer_city
      t.text :buyer_address
      t.integer :cart_id
      t.string :product_name
      t.string :product_size
      t.string :product_color
      t.string :product_message
      t.string :order_status
      t.string :payment_type

      t.timestamps null: false
    end
  end
end
