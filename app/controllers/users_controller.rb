class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    uid, password = request_headers_sign_up
    if @user.save
      password_confirmation = password
      auth = @user.authentications.create(password: password, password_confirmation: password_confirmation, uid: uid, access_token: []);
      auth.generate_confirm_token
      UserMailer.email_sign_up(auth).deliver_now
      render json: @user, status: :created
    else 
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private
  def user_params
    params.require(:user).permit(:name)
  end
end
