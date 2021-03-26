class AddImageToPrzedmiots < ActiveRecord::Migration[6.1]
  def change
    add_column :przedmiots, :image, :string
  end
end
