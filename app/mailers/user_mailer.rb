class UserMailer < ApplicationMailer
	def email_sign_up(auth)
		@auth=auth
		@url = 'http://172.17.19.85:4200/confirm_email/'
		@url = @url + @auth.confirm_token
		mail(to: @auth.uid, subject: 'Login Success')
	end
end
