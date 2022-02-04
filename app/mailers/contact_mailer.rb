class ContactMailer < ApplicationMailer
  default from: "from@example.com"
  def contact(message)
    @message = message
    mail(to: 'info@komodoprod.com', subject: 'Test')
  end
end
