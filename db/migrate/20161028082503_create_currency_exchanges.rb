class CreateCurrencyExchanges < ActiveRecord::Migration
  def change
    create_table :currency_exchanges do |t|
      t.string :currency_rate

      t.timestamps null: false
    end
  end
end
