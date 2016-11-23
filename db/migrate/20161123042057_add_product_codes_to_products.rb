class AddProductCodesToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :product_code_1, :string
  	add_column :products, :product_code_2, :string
  	add_column :products, :product_code_3, :string
  	add_column :products, :product_code_4, :string
  	add_column :products, :product_code_5, :string
  end
end
