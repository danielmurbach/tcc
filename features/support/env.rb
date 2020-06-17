require 'cucumber'
require 'pry'
require 'rspec'
require 'site_prism'
require 'capybara'
require 'capybara/cucumber'
require 'capybara/dsl'
require 'capybara/rspec'
require 'webdrivers'
require 'selenium-webdriver'
require 'faker'

# Capybara.register_driver :selenium do |app|
#     args = %w[window-maximize, headless disable-gpu]

#     caps = Selenium::WebDriver::Remote::Capabilities.chrome(
#         'chromeOptions' => {
#             'args' => args
#         }
#     )
#     Capybara::Selenium::Driver.new(app, browser: :chrome, desired_capabilities: caps )
#     end 

Capybara.configure do |config|
    # digo que o driver padrao eh o do selenium.
Capybara.default_driver = :selenium_chrome

  end