class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    password = params[:password]
    uid = params[:uid]
    if @user.save
      auth = @user.authentications.create(password: password, uid: uid, access_token: []);
      auth.generate_confirm_token
      UserMailer.email_sign_up(auth).deliver_now
      render json: @user, status: :created
    else 
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :phone, :gender, :avatar)
  end
end
