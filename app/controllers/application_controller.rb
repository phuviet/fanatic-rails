class ApplicationController < ActionController::API

  def response_headers(access_token, provider, uid)
    response.headers['Access-Token'] = access_token
    response.headers['Uid'] = uid
    response.headers['Provider'] = provider
  end

  def request_headers
    [request.headers['Access-Token'], request.headers['Provider'], request.headers['Uid']]
  end

  # def check_user_authorize(access_token, provider, uid)
  #   auth = Authentication.find_by(provider: provider, uid: uid)
  #   tokens = auth.access_token
  #   auth && tokens.include?(access_token)
  # end

  # def current_user_auth(provider, uid)
  #   Authentication.find_by(provider: provider, uid: uid).user
  # end

  def authorize_user
    _auth = Authentication.find_by(provider: request.headers['Provider'], uid: request.headers['Uid'])
    _auth && _auth.access_token.include?(request.headers['Access-Token']) ? _auth : nil
  end

  def current_user
    authorize_user ? authorize_user.user : nil
  end
end
