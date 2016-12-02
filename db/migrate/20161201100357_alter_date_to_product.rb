class AlterDateToProduct < ActiveRecord::Migration
  def change

  	 remove_column :products, :start_to_sell_on
  	 remove_column :products, :end_on

  	 add_column :products, :start_to_sell_on, :datetime
  	 add_column :products, :end_on, :datetime
  	 add_column :products, :short_title, :string
  end
end



