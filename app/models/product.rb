class Product < ApplicationRecord
  def info
    "title, description, price; #{title}, #{description}, #{int_price}"
  end

  def int_price
    price.to_i
  end
end
