class CreateMyapis < ActiveRecord::Migration
  def change
    create_table :myapis do |t|

      t.timestamps null: false
    end
  end
end
