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

Capybara.configure do |config|
# digo que o driver padrao eh o do selenium. Para browser defaul deixar apenas :selenium
Capybara.default_driver = :selenium_chrome
 end