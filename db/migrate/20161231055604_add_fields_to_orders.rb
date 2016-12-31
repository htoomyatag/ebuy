class AddFieldsToOrders < ActiveRecord::Migration
  def change
  	  	add_column :orders, :delivery_method, :string
  	  	add_column :products, :admin_recommend, :string
  end
end
