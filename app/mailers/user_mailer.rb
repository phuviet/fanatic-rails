class UserMailer < ApplicationMailer
  def email_sign_up(auth)
    @auth=auth
    @url = 'http://0.0.0.0:4200/confirm_email/'
    @url = @url + @auth.confirm_token + "/" + @auth.uid + "/" + @auth.provider
    mail(to: @auth.uid, subject: 'VERIFY YOUR ACCOUNT IN FANATIC WEBSITE!')
  end
end
