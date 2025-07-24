class SubscribersController < ApplicationController
  allow_unauthenticated_access only: %i[ create ]

  def create
    @subscriber = Subscriber.new(params.permit(:email_address))

    if @subscriber.save
      MailingListMailer.confirm_email(@subscriber.email_address, @subscriber.auth_code).deliver_later
      redirect_to root_path, notice: "I'm sending you an email to confirm your subscription. Please check your inbox and click the link to confirm."
    else
      render :new
    end
  end

  def confirm
    subscriber = Subscriber.find_by(auth_code: params[:auth_code])

    if subscriber
      subscriber.update(confirmed: true)
      redirect_to root_path, notice: "Thank you for confirming your subscription! You are now subscribed to the photo digest."
    else
      redirect_to root_path, alert: "Invalid confirmation code."
    end
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path, alert: "Subscription not found."
  end
end
