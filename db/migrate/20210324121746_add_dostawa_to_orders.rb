class AddDostawaToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :dostawa, :string
  end
end
