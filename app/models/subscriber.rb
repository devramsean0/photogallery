class Subscriber < ApplicationRecord
  before_create :set_auth_code


  private
  def set_auth_code
    loop do
      self.auth_code = SecureRandom.hex(15)
      break unless Subscriber.exists?(auth_code: self.auth_code)
    end

    puts "Generated auth code: #{self.auth_code}"
  end
end
