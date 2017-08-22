class OmniAuthController < ApplicationController
  def create
    authSocial = request.env['omniauth.auth']
    auth = Authentication.sign_in_with_account_social(authSocial)
    if auth
      response_headers(authSocial.credentials.token, authSocial.provider, authSocial.uid)
      render json: auth.user, status: :success
    else
      render json: { error: 'Invalid social account' }, status: :not_found
    end
  end
end
