require 'rails_helper'

RSpec.describe Product, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  let(:product1){described_class.new(name: 'book10', price: 100, description: 'Y.Matsumoto', currency: :UAH)} 
  let(:product2){described_class.new(name: 'book11', price: 110, description: 'V.Suvorov', currency: :UAH)} 

  it 'counts product' do
    expect(described_class.count).to eq(0)
    product1.save
    expect(described_class.count).to eq(1)
    
    product2.save
    expect(described_class.count).to eq(2)
    
  end

end
