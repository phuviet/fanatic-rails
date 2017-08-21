class OmniAuthController < ApplicationController
  def create
    @authSocial = request.env['omniauth.auth']
    @auth = Authentication.find_by(uid: @authSocial.uid, provider: @authSocial.provider)
    if @auth
      @auth.access(@authSocial.credentials.token)
    else
      @user = User.create()
      @newAuth = Authentication.create(
        access_token: '{"token": []}',
        user_id: @user.id,
        provider: @authSocial.provider,
        uid: @authSocial.uid
        )
      @newAuth.access(@authSocial.credentials.token)
    end
    Authentication.response_headers(@authSocial.credentials.token, @authSocial)
  end
end
