require "test_helper"

class MailingListMailerTest < ActionMailer::TestCase
  test "digest" do
    mail = MailingListMailer.digest
    assert_equal "Digest", mail.subject
    assert_equal [ "to@example.org" ], mail.to
    assert_equal [ "from@example.com" ], mail.from
    assert_match "Hi", mail.body.encoded
  end
end
