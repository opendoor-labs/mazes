class Level < ActiveRecord::Base
  def generate_new_password!
    update!(password: SecureRandom.urlsafe_base64)
  end
end
