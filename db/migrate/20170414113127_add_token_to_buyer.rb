class AddTokenToBuyer < ActiveRecord::Migration
  
  def change
  	    add_column :buyers, :authentication_token, :string
  	    add_index :buyers, :authentication_token, :unique => true
  end
  
end
