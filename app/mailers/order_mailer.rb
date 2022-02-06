class OrderMailer < ApplicationMailer
  def new_order_email
    @order = params[:order]

    mail(to: 'hello@komodoprod.com', subject: "You got a new order!")
  end
end
