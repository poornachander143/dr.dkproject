require 'selenium-webdriver'
require_relative '../pages/drsignuppage.rb'

#require_relative 'C:\Users\LENOVO\OneDrive\Desktop\cucumberproject\pages\drsignuppage.rb'
require_relative '../pages/facebookexample1page.rb'
require_relative '../pages/practicepage.rb'
require_relative '../pages/hiperfiberpage.rb'
Before do |scenario|
  DataMagic.load_for_scenario(scenario)
  @browser = Selenium::WebDriver.for :chrome
  $login = SignupPage.new(@browser)
  $login1 = SignupPage.new(@browser)
  $facebook = Facebookloginpage.new(@browser)
  $drtv = Drtvpage.new(@browser)
  $demoqa = Demoqapage.new(@browser)
  $hiperpage = Hiperpage.new(@browser)
  $logbuypage = Hiperpage.new(@browser)
  $dropdownpage = Hiperpage.new(@browser)
  $checkboxpage = Hiperpage.new(@browser)
  
  
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