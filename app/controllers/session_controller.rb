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

def destroy
  @provider = request.headers['Provider']
  @uid = request.headers['Uid']
  @access_token = request.headers['Access-Token']
  binding.pry
  @auth = Authentication.find_by(provider: @provider, uid: @uid)
  if @auth
    @tokens = JSON.parse(@auth.access_token)['token']
    if @tokens.select!{ |token| token == @access_token}
      @auth.update_attribute(:access_token, '{"token": ' + @tokens.to_s + '}')
    else
      render json: { error: 'Invalid access token!' }
      binding.pry
    end
  else
    render json: { error: 'Invalid user logout!' }
  end
end
end
