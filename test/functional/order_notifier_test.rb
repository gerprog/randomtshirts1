require 'test_helper'

class OrderNotifierTest < ActionMailer::TestCase
  test "received" do
    mail = OrderNotifier.received
    assert_equal "So Random T-Shirts Order Confirmation", mail.subject
    assert_equal ["ger@example.org"], mail.to
    assert_equal ["sorandom@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "shipped" do
    mail = OrderNotifier.shipped
    assert_equal "So Random T-Shirts Order Shipped", mail.subject
    assert_equal ["ger@example.org"], mail.to
    assert_equal ["sorandom@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
