class User < ApplicationRecord

  has_one :cart
  attr_accessor :user

  def info(id)
    @user = User.find(id)
    return @user.first_name if @user.last_name == nil

    return @user.last_name if @user.first_name == nil

    @user.first_name + ' ' + @user.last_name
  end

end
