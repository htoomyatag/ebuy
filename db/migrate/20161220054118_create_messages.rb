class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :body
      t.string :conversation_code
      t.integer :conversation_id
      t.integer :buyer_id

      t.timestamps null: false
    end
  end
end
