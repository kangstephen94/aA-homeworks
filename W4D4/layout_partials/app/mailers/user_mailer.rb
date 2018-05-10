class UserMailer < ApplicationMailer
  default from: 'everybody@appacademy.io'
  layout 'mailer'

  def welcome_email
    @user = user
    @url  = 'http://example.com/session/new'
    mail(to: user.username, subject: 'Welcome to 99 Cats')
  end
end
