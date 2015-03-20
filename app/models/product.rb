class Product < ActiveRecord::Base

  has_many :product_orders
  has_many :orders, :through => :product_orders

  validates :name, presence: true, uniqueness: true
  validates :price, { numericality: { great_than: 0 }, allow_nil: true }
  validates :currency, presence: true, length: { is: 3 }
  validates :currency, inclusion: { in: %w(UAH EUR USD MXN ARS), #MXN-Mexican Peso, ARS-Argentine Peso
            message: "%{value} is not a valid currency" }

  after_create { puts "created" }
  after_save { puts "saved" }
  after_destroy { puts "deleted" }


  def price3   # test method
    price = self.price * 3 
  end


  def change_valuta sym
    valuta = {:USD => 1, :MXN => 15.4, :ARS => 8.78, :UAH => 22.5, :EUR => 0.94} # MXN-Mexican Peso, ARS-Argentine Peso
    self.price = price
    price = (self.price / valuta[self.currency] * valuta[:sym])
    self.save
  end
end


# Product.select('id, name').where('price<40').order('price').limit(2).all
# Product.select('id, name').where('price<40').order('price').limit(2).to_s
# здесь добавить методы

# Product.new(name: 'book1', price: 10, currency: :UAH).save
