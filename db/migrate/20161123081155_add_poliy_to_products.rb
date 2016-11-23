class AddPoliyToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :notice, :text
  end
end
