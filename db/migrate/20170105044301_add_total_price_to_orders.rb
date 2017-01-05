class AddTotalPriceToOrders < ActiveRecord::Migration
  def change
  	 	  	add_column :orders, :thetotal_price, :string
  end
end
