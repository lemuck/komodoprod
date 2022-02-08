class UserMailer < ApplicationMailer
  default from: 'hello@komodoprod.com'

  def welcome_email
    @user = params[:user]
    @url  = 'http://komodoprod.com'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
