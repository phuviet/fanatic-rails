class SessionController < ApplicationController
  def create
    auth = Authentication.find_by(uid: params[:uid])
    if auth && auth.authenticate(params[:password])
      auth.sign_in
      response_headers(auth.access_token.last, auth.provider, auth.uid)
      render json: auth.user, status: :created
    else
      render json: { error: 'Invalid account!' }, status: :not_found
    end
  end

  def destroy
    access_token, provider, uid = request_headers()
    # binding.pry
    auth = Authentication.find_by(provider: provider, uid: uid)
    if auth && auth.remove_token(access_token)
      render json: { success: 'Successfully' }, status: 200
    else
      render json: { error: 'Unauthorize' }, status: :not_found
    end
  end
end
