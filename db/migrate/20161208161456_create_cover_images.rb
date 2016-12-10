class CreateCoverImages < ActiveRecord::Migration
  def change
    create_table :cover_images do |t|

      t.timestamps null: false
    end
  end
end
