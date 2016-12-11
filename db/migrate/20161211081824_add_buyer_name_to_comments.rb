class AddBuyerNameToComments < ActiveRecord::Migration
  def change
  	  	add_column :comments, :buyer_name, :string
  end
end
