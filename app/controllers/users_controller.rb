class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      auth = @user.authentications.create(password: params[:password], password_confirmation: params[:password_confirmation], uid: params[:uid], access_token: []);
      auth.generate_confirm_token
      UserMailer.email_sign_up(auth).deliver_now
      render json: @user, status: :created
    else 
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def update
  end

  def show
  end

  def index
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:name)
  end
end
