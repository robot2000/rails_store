class CreateCarts < ActiveRecord::Migration
  # def change
  #   create_table :carts do |t|

  #     t.timestamps null: false
  #   end
  # end

  def up
    create_table :carts do |t|
      t.string :name, limit: 32
      t.integer :price
    end
  end

  def down
    drop_table :carts
  end
end
