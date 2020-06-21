Before  do
    visit "http://shop.danielmurbach.com.br/"
    Capybara.page.driver.browser.manage.window.maximize
    Capybara.default_max_wait_time = 120
end 