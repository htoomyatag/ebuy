class AddColumnsToSentYourProducts < ActiveRecord::Migration
  def change
  	 add_column :request_products, :sender_name, :string
  	 add_column :request_products, :sender_phone, :string
  	 add_column :request_products, :sender_email, :string
  end
end
