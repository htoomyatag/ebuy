class AddCategoryToProducts < ActiveRecord::Migration
  def change
  	  	add_column :products, :product_childsubcategory, :string
  end
end
