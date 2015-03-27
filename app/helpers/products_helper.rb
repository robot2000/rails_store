module ProductsHelper
  def formated_price (product)
    content_tag :b, class: 'bold' do
      "$" + product.price + "</b>"
    end
  end
end
