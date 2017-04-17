class AddCartKeyToLineItems < ActiveRecord::Migration
 def change
  	 add_column :line_items, :cart_key, :string
  end
end
