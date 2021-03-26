class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :imie
      t.string :nazwisko
      t.string :miasto
      t.string :ulica
      t.string :kodpocztowy
      t.integer :telefon

      t.timestamps
    end
  end
end
