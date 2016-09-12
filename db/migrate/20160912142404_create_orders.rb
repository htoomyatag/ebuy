class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :buyer_id
      t.string :buyer_name
      t.string :buyer_email
      t.string :buyer_phone
      t.string :buyer_township
      t.text :buyer_address
      t.integer :cart_id
      t.string :order_status

      t.timestamps null: false
    end
  end
end
