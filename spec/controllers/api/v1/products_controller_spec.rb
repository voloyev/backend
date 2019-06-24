require 'rails_helper'

RSpec.describe Api::V1::ProductsController do
  describe '#index' do
    it 'returns list of 10 recent products' do
      11.times do |n|
        Product.create(title: "Title#{n}", description: n, price: n)
      end
      expected = Product.limit(10).to_json

      get :index
      expect(response.body).to eq(expected)
    end

    describe '#show' do
      it 'returns product with given id' do
        11.times do |n|
          Product.create(title: "Title#{n}", description: n, price: n)
        end
        expected = Product.find(1).to_json

        get :show, params: { id: 1 }
        expect(response.body).to eq(expected)
      end

      it 'returns empty json if no product with id' do
        2.times do |n|
          Product.create(title: "Title#{n}", description: n, price: n)
        end

        expected = {}.to_json

        get :show, params: { id: 5 }
        expect(response.body).to eq(expected)
      end
    end
  end
end
