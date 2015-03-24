class Order < ActiveRecord::Base
  has_many :product_orders
  has_many :products, :through => :product_orders

  validates :name, :adress, presence: true

  # before_save бежим по колекции и cумируем цены для total_price 
end
