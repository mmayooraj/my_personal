require 'capybara'
require 'capybara/cucumber'
require 'json'
require 'capybara/dsl'
require 'selenium-webdriver'
require 'site_prism'
require 'rspec'

Capybara.configure do |config|
  config.default_driver = :selenium
  config.app_host   = 'https://www.worldremit.com'
  Capybara.page.driver.browser.manage.window.maximize

end

module Selectors
  Capybara.add_selector(:linkhref) do
    xpath {|href| ".//a[@href='#{href}']"}
  end


end
