class AddProductModelToLineitems < ActiveRecord::Migration
  def change
  	 add_column :line_items, :product_model, :string
  end
end
