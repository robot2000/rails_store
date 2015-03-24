class ProductOrder < ActiveRecord::Base
	belongs_to :product # model's name
	belongs_to :order
end