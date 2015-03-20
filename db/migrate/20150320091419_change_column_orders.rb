class ChangeColumnOrders < ActiveRecord::Migration
  def change
    change_column :orders, :adress, :string, limit: 32
    change_column :orders, :name, :string, limit: 32
  end
end
