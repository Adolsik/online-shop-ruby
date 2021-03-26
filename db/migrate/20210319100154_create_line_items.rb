class CreateLineItems < ActiveRecord::Migration[6.1]
  def change
    create_table :line_items do |t|
      t.references :przedmiot, null: false, foreign_key: true
      t.belongs_to :koszyk, null: false, foreign_key: true

      t.timestamps
    end
  end
end
