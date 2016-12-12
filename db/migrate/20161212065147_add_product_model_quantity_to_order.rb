class AddProductModelQuantityToOrder < ActiveRecord::Migration
  def change
  	add_column :orders, :product_quantity, :string
  	add_column :orders, :product_model, :string
  end
end
