class SessionController < ApplicationController
  def create
    @user = Authentication.find_by(email: params[:email], password_digest: params[:password])

    if @user
      # response.headers['Name'] = 'Viet Nguyen P.'
      render json: { user: @user }
    else
    end
  end
end
