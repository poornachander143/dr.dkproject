require 'selenium-webdriver'
require_relative 'C:\Users\LENOVO\OneDrive\Desktop\cucumberproject\pages\drsignuppage.rb'
require_relative 'C:\Users\LENOVO\OneDrive\Desktop\cucumberproject\pages\facebookexample1page.rb'
Before do |scenario|
  DataMagic.load_for_scenario(scenario)
  @browser = Selenium::WebDriver.for :chrome
  $login = SignupPage.new(@browser)
  $login1 = SignupPage.new(@browser)
  $facebook = Facebookloginpage.new(@browser)
  $drtv = Drtvpage.new(@browser)
  #$demoqa = demoqapage.new(@browser)
  
  
end

After do |scenario|
  if scenario.passed?
    puts "Test Passed! 😄"   # Smiley or any symbol
  else
    puts "Test Failed! 😞"
  end
end



After do
  # @browser.close
end