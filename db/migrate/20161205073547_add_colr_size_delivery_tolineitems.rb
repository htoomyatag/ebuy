class AddColrSizeDeliveryTolineitems < ActiveRecord::Migration
  def change
  	  add_column :line_items, :product_size, :string
  	  add_column :line_items, :product_color, :string
  	  add_column :line_items, :delivery_method, :string
  end
end
