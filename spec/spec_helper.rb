require "rubygems"
require "spork"

Spork.prefork do
  ENV["RAILS_ENV"] ||= "test"

  require File.expand_path("../../config/environment", __FILE__)
  require "rspec/rails"
  require "rspec/autorun"
  require "database_cleaner"
  require "factory_girl_rails"
  require "authlogic/test_case"

  Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

  RSpec.configure do |config|
    config.include FactoryGirl::Syntax::Methods
    config.include Authlogic::TestCase

    config.infer_base_class_for_anonymous_controllers = false

    config.before :suite do
      DatabaseCleaner.strategy = :truncation
      DatabaseCleaner.clean_with :truncation
    end

    config.before :each do
      activate_authlogic
      DatabaseCleaner.start
    end

    config.after :each do
      DatabaseCleaner.clean
    end

  end
end

Spork.each_run do
  FactoryGirl.reload
end
