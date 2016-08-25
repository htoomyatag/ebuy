class CreateFrontends < ActiveRecord::Migration
  def change
    create_table :frontends do |t|

      t.timestamps null: false
    end
  end
end
