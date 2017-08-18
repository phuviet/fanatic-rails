class SessionController < ApplicationController
  def create
    @user = Authentication.find_by(uid: params[:uid], password_digest: params[:password])

    if @user
      binding.pry
      @access_token = request.headers['Access-Token']
      render json: { user: @user, access_token: @access_token }
    else
    end
  end
end
