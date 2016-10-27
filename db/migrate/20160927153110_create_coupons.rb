class CreateCoupons < ActiveRecord::Migration
  def change
    create_table :coupons do |t|
      t.string :title
      t.date :expire_date
      t.integer :limitation
      t.string :discount_percentage

      t.timestamps null: false
    end
  end
end
