class ConfirmEmailSignUpJob < ApplicationJob
  queue_as :default

  def perform(auth)
    UserMailer.email_sign_up(auth).deliver_now
  end
end
