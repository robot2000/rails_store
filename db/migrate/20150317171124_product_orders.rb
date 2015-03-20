class ProductOrders < ActiveRecord::Migration
  
  def change
    create_table :product_orders do |t|
      t.integer :product_id
      t.integer :order_id
    end
  end
end
