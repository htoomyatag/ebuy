class AddShipFromToProducts < ActiveRecord::Migration
  def change
  	  	add_column :products, :ship_from, :string
  end
end
