class AddCurrencyToProducts < ActiveRecord::Migration
  
  def change
    change_table :products do |t|
      t.string :currency
    end
  end
end