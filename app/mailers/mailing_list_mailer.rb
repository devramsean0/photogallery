class MailingListMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.mailing_list_mailer.digest.subject
  #
  def digest(to, photos)
    @photos = photos

    mail to: to, subject: "I just uploaded some new photos!"
  end

  def confirm_email(email_address, auth_code)
    @auth_code = auth_code

    mail to: email_address, subject: "Please confirm your subscription to the digest list"
  end
end
