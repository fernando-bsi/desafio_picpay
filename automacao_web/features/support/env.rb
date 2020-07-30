require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'site_prism'
require 'pry'

# Capybara.configure do |config|
#     config.default_driver = :selenium_chrome_headless
# end

## register driver according with browser chosen
Capybara.register_driver :selenium do |app|
    option = ::Selenium::WebDriver::Chrome::Options.new(args: ['--disable-infobars', 'window-size=1600,1024'])
      Capybara::Selenium::Driver.new(app, browser: :chrome, options: option)
end

Capybara.configure do |config|
    config.default_driver = :selenium
    config.default_max_wait_time = 30
end