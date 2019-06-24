require 'rails_helper'

RSpec.describe Api::V1::ProductsController do
  describe '#index' do
    it 'returns list of 10 recent products' do
      11.times do |n|
        Product.create(title: "Title#{n}", description: n, price: n)
      end
      expected = Product.limit(10).to_json
      get :index
      expect(response).to eq(expected)
    end
  end
end
