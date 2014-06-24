ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'rspec/autorun'
require 'database_cleaner'

# Required so we can include custom support files.
Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

#------------------------------------------------------------------------------
# RSpec configuration
#--------------------
RSpec.configure do |config|

  # Our database strategy is as follows:
  # * Before the whole suite, wipe the database,
  # * Run each test within a transaction,
  # * Run the database cleaner after each test.
  config.before(:suite) do
    DatabaseCleaner.clean_with(:truncation)
  end

  config.before(:each) do
    DatabaseCleaner.strategy = :transaction
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end

  # Custom RSpec settings
  config.use_transactional_fixtures = false
  config.infer_base_class_for_anonymous_controllers = true
  config.fail_fast = true
  config.color     = true
  config.order     = "random"
end
