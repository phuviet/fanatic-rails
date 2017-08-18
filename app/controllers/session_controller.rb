class SessionController < ApplicationController
  def create
    @user = Authentication.find_by(uid: params[:uid], password_digest: params[:password])

    if @user
      # @access_token = request.headers['Content-Type']
      render json: { user: @user, access_token: @access_token }
    else
    end
  end
end
