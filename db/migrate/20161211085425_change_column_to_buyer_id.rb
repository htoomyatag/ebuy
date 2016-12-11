class ChangeColumnToBuyerId < ActiveRecord::Migration
  def change
  	  	 remove_column :comments, :buyer_id
  	     add_column :comments, :buyer_id, :string
  end
end
