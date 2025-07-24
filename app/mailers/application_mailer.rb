class ApplicationMailer < ActionMailer::Base
  default from: "gallery@sean.cyou"
  default reply_to: "hi@sean.cyou"
  layout "mailer"
end
