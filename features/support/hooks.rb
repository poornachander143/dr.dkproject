require 'selenium-webdriver'
require_relative 'C:\Users\LENOVO\OneDrive\Desktop\cucumberproject\pages\drsignuppage.rb'
require_relative 'C:\Users\LENOVO\OneDrive\Desktop\cucumberproject\pages\facebookexample1page.rb'
require_relative 'C:\Users\LENOVO\OneDrive\Desktop\cucumberproject\pages\practicepage.rb'
require_relative 'C:\Users\LENOVO\OneDrive\Desktop\cucumberproject\pages\hiperfiberpage.rb'
Before do |scenario|
  DataMagic.load_for_scenario(scenario)
  @browser = Selenium::WebDriver.for :chrome
  $login = SignupPage.new(@browser)
  $login1 = SignupPage.new(@browser)
  $facebook = Facebookloginpage.new(@browser)
  $drtv = Drtvpage.new(@browser)
  $demoqa = Demoqapage.new(@browser)
  $hiperpage = Hiperpage.new(@browser)
  
  # i want to add new file
  
  #i create lkkkk
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