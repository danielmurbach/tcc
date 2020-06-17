Before  do
    Capybara.register_driver :chrome do |app|
        Capybara::Selenium::Driver.new(app, browser: :chrome)
      end
      
      Capybara.register_driver :headless_chrome do |app|
        capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(
          chromeOptions: {
            args: %w[headless enable-features=NetworkService,NetworkServiceInProcess]
          }
        )
      
        Capybara::Selenium::Driver.new app,
          browser: :chrome,
          desired_capabilities: capabilities
      end
      
      Capybara.default_driver = :headless_chrome
      Capybara.javascript_driver = :headless_chrome
    # visit "http://shop.danielmurbach.com.br/"
    # Capybara.page.driver.browser.manage.window.maximize
    # Capybara.default_max_wait_time = 120
end 