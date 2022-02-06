require 'test_helper'

class OrderMailerTest < ActionMailer::TestCase
  test "new order email" do
    # Set up an order based on the fixture
    order = orders(:one)

    # Set up an email using the order contents
    email = OrderMailer.with(order: order).new_order_email

    # Check if the email is sent
    assert_emails 1 do
      email.deliver_now
    end

    # Check the contents are correct
    assert_equal ['hello@komodoprod.com'], email.from
    assert_equal ['hello@komodoprod.com'], email.to
    assert_equal "You got a new order!", email.subject
    assert_match order.email, email.html_part.body.encoded
    assert_match order.email, email.text_part.body.encoded
    assert_match order.message, email.html_part.body.encoded
    assert_match order.message, email.text_part.body.encoded
  end
end
