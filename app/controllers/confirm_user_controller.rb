class ConfirmUserController < ApplicationController
  def create
    return render json: { error: 'Token is not present!' } if params[:confirm_token].blank?
    token = params[:confirm_token]
    uid = params[:uid]
    provider = params[:provider]
    @auth = Authentication.find_by(uid: uid, provider: provider)
    if @auth 
      if @auth.confirm_token_valid? 
        if @auth.confirm_token == token
          @auth.confirmed_email
          @auth.save
          return render json: { status: 'ok' }, status: :ok
        end
      else
        return render json: { error: 'Your token is expired' }
      end
    end
    return render json: { error: 'No email!' }
  end
end
