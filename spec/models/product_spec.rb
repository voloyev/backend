require 'rails_helper'

RSpec.describe Product do
  describe '#info' do
    it 'return info about product in csv like format' do
      product = Product.create(
        title: 'Orange', description: 'Orange fruit', price: 10
      )
      expect(
        product.info
      ).to eq('title, description, price; Orange, Orange fruit, 10')
    end
  end
end
