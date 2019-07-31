require 'capybara/cucumber'
require 'capybara/dsl'
require 'rspec'
require_relative '../lib/bjss_tests_service' #require main page file

# The below line of code now means that the chrome driver is registered before every run.
# Any query stated at the top level of the env.rb file will be initiated at every cucumber run

Capybara.configure do |config|
  config.ignore_hidden_elements = false #to ensure that all hidden elements on a page are recorded/available
  config.match = :prefer_exact #this setting is to ensure Capybara has specific matching rather than fuzzy logic

  if ENV['chrome']
    Capybara.default_driver = :chrome
    Capybara.register_driver :chrome do |app|
      Capybara::Selenium::Driver.new(app, :browser => :chrome)
    end
  end
end

World(BJSSTests)
