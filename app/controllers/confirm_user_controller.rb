class ConfirmUserController < ApplicationController
	def create
		if params[:confirm_token].blank?
      return render json: { error: 'Email not present' }
    end
    token = params[:confirm_token].to_s
    @auth = Authentication.find_by(confirm_token: token)
    if @auth && @auth.confirm_token_valid?
      @auth.validated_email
      @auth.save
      return render json: { status: 'ok' }, status: :ok
    end
    return render json: { error: 'No email ' }
	end
end
