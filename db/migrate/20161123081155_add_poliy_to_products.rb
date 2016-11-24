class AddPoliyToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :notice, :text
  	add_column :products, :description, :text
  end
end
