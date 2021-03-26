class AddSizeToPrzedmiots < ActiveRecord::Migration[6.1]
  def change
    add_column :przedmiots, :size, :string
  end
end
