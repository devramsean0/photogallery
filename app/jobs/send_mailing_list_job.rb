class SendMailingListJob < ApplicationJob
  queue_as :default

  def perform(*args)
    photos = Photo.where("in_digest = ?", false)
    return if photos.empty?

    Subscriber.all.each do |subscriber|
      if subscriber.confirmed do
        MailingListMailer.digest(subscriber.email_address, photos).deliver_later
      else
        Rails.logger.info "Skipping unconfirmed subscriber: #{subscriber.email_address}"
      end
    end

    photos.update_all(in_digest: true)
  end
end
