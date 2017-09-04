class UsersController < ApplicationController
  before_action :set_user, only: %i[show update destroy]

  def create
    user = User.new(user_params)
    if user.save
      if !Authentication.find_by(uid: params[:uid])
        auth = user.authentications.create(password: params[:password], uid: params[:uid], access_token: []);
        auth.generate_confirm_token
        ConfirmEmailSignUpJob.perform_later(auth)
        render json: user, status: :created
      else 
        user.delete
        render json: { error: 'Your email is valid!' }
      end
    else      
      render json: user.errors, status: :unprocessable_entity
    end
  end

  def show
    render json: @user
  end

  def update
    if @user.update(user_params)
      render json: @user
    else 
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :phone, :gender, :address, :avatar)
  end
end
