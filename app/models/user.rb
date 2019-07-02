class User < ApplicationRecord

  has_one :cart
  attr_accessor :user

  def info(id)
    @user = User.find(id)
    @user.first_name + ' ' + @user.last_name
  end

end
