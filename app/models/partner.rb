# frozen_string_literal: true

class Partner < ApplicationRecord
  has_many :products
  def info
    if !name.nil? || !address.nil?
      "#{name} #{address}"
    else
      'Name or address is nil'
    end
  end
end
