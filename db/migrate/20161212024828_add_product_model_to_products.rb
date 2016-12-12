class AddProductModelToProducts < ActiveRecord::Migration
  def change
  	 	add_column :products, :product_model, :string
  end
end
