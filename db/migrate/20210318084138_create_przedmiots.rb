class CreatePrzedmiots < ActiveRecord::Migration[6.1]
  def change
    create_table :przedmiots do |t|
      t.string :brand
      t.string :model, default: ''
      t.string :description
      t.string :conditon
      t.string :title
      t.decimal :price, precision: 5, scale: 2, default: 0

      t.timestamps
    end
  end
end
