class CreateOrders < ActiveRecord::Migration
  
  def change
    create_table :orders do |t|
      t.integer :adress
      t.integer :name
      t.integer :total_price
    end
  end
end