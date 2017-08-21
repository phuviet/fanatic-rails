class SessionController < ApplicationController
 def create
  @auth = Authentication.find_by(uid: params[:uid])
  if @auth
    if @auth.password_digest == params[:password]
      @access_token = SecureRandom.urlsafe_base64
      @auth.access(@access_token)
      response.headers['Access-Token'] = @access_token
      response.headers['Uid'] = @auth.uid
      response.headers['Provider'] = @auth.provider
      binding.pry
      render json: @auth, status: :created
    else
      render json: { error: 'Invalid password, please try again!' }, status: :not_found
    end
  else
    render json: { error: 'Invalid email!' }, status: :not_found
  end
end
end
