class Order < ActiveRecord::Base
  has_many :product_orders
  has_many :products, :through => :product_orders

  validates :name, :adress, presence: true
end
