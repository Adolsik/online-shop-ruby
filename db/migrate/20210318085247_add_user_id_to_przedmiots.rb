class AddUserIdToPrzedmiots < ActiveRecord::Migration[6.1]
  def change
    add_column :przedmiots, :user_id, :integer
  end
end
