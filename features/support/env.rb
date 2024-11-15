require 'rspec'
require 'page-object'
require 'data_magic'
require 'selenium-webdriver'
require 'selenium-cucumber'
World(PageObject::PageFactory)

require 'selenium-webdriver'

Before do
  @driver = Selenium::WebDriver.for :chrome
end

After do
  @driver.quit
end

