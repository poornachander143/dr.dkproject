require 'selenium-webdriver'

Given('User can open the google page') do
  @browser = Selenium::WebDriver.for :firefox
    @browser.navigate.to('http://www.google.com')
    sleep 5
  @browser.find_element(:xpath, '/html/body/div[2]/div[2]/div[3]/span/div/div/div/div[3]/div[1]/button[1]/div').click
end

When('User can search page wit item') do
  @browser.find_element(:name, 'q').send_keys("selenium")
  sleep 5
end

When('User can click the search button') do
  @browser.find_element(:xpath, '/html/body/div[1]/div[3]/form/div[1]/div[1]/div[2]/div[4]/div[2]/div[1]/div/ul/li[1]/div/div[2]/div[1]/div[1]/span').click
end

Then('Usen can open the search item') do
  
    @browser.quit
end