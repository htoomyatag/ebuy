class AddTimesalesToProducts < ActiveRecord::Migration
  def change
  	  add_column :products, :time_sale, :string
  end

end
