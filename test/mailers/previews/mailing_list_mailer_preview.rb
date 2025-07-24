# Preview all emails at http://localhost:3000/rails/mailers/mailing_list_mailer
class MailingListMailerPreview < ActionMailer::Preview
  # Preview this email at http://localhost:3000/rails/mailers/mailing_list_mailer/digest
  def digest
    MailingListMailer.digest
  end
end
