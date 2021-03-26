class CreateKoszyks < ActiveRecord::Migration[6.1]
  def change
    create_table :koszyks do |t|

      t.timestamps
    end
  end
end
