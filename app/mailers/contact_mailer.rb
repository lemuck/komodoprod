class ContactMailer < ApplicationMailer
  default from: "hello@komodoprod.com"
  def contact(message)
    @message = message
    mail(to: 'hello@komodoprod.com', subject: 'Test')
  end
end
