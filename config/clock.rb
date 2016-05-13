require File.expand_path('../environment', __FILE__)
require File.expand_path('../boot', __FILE__)

module Clockwork
  every(1.day, 'RefreshTokenJob', at: '5:00', tz: 'America/Los_Angeles') do
    RefreshTokenJob.perform_later
  end
end
