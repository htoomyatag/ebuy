class CreateBuyers < ActiveRecord::Migration
  def change
    create_table :buyers do |t|
      t.string :buyer_name
      t.string :buyer_phone
      t.string :buyer_township
      t.text :buyer_address

      t.timestamps null: false
    end
  end
end
