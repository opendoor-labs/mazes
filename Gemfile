source 'https://rubygems.org'

gem 'active_model_serializers'
gem 'pg'
gem 'pry'
gem 'pry-rails'
gem 'puma'
gem 'rails'
gem 'tilt'
gem 'redis'
gem 'clockwork'

group :production do
  gem 'rails_12factor'
end

group :development do
  gem 'excon'
end

group :test do
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'rspec-rails'
end

ruby File.read('.ruby-version').strip
