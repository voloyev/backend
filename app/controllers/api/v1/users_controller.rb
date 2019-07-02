module Api
  module V1
    class UsersController < ApplicationController
      before_action :set_user

      def index
        @users = User.all

        render json: @users
      end

      def show
        @user = set_user
        render json: @product
      end

      private

      def set_user
        @user = User.find(params[:id])
      end
    end
  end
end