class RefreshTokenJob < ActiveJob::Base
  def perform
    Redis.new.setex('token', 1.day, SecureRandom.urlsafe_base64)
  end
end
