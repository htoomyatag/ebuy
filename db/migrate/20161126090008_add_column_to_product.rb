class AddColumnToProduct < ActiveRecord::Migration
  def change
  	 add_column :products, :show_at, :text
  end
end
