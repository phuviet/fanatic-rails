class UsersController < ApplicationController
  before_action :perform_authorization, only: [:show, :update]
  def show
    render json: current_user
  end

  def update
    binding.pry
    if current_user.update(user_params)
      render json: current_user
    else
      render json: current_user.errors, status: :unprocessable_entity
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :phone, :address, :gender, :avatar)
  end
end
