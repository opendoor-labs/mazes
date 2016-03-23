ENV['RAILS_ENV'] ||= 'test'

require File.expand_path('../../config/environment', __FILE__)

require 'rspec/rails'

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.include(FactoryGirl::Syntax::Methods)

  config.infer_spec_type_from_file_location!

  config.before(:each) do |example|
    DatabaseCleaner.clean_with(:truncation)
  end
end
