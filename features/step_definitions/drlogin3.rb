require_relative 'C:\Users\LENOVO\OneDrive\Desktop\cucumberproject\pages\drlogin3_page.rb'
require 'selenium-webdriver'

Given('User open DR URL1 {string}') do |url|
  login = LoginPage.new(@browser)
  login.visit(url)  
#  @browser.get(url)
  
 sleep 4
  #@browser.find_element(:name, 'submitAll').click;
  
end

When('User can click on login button1') do
 # @browser.find_element(:xpath, '//a[@class="dre-navigation-login__login-action"]').click;
  login = LoginPage.new(@browser)
  login.click_loginbutton
  sleep 4
end

When('User can enter the username value1 {string}') do |userName|
  login = LoginPage.new(@browser)
  login.enter_username(userName)
  
  # @browser.find_element(:name, 'email').send_keys(userName)
  sleep 4
end

When('User can click on the next button2') do
  #@browser.find_element(:xpath, '//button[@type="button"]').click
  login = LoginPage.new(@browser)
  login.nextbutton
  
  sleep 5
end

When('User can enter the password value1 {string}') do |password|
  # @browser.find_element(:id, 'password').send_keys(password)
  login = LoginPage.new(@browser)
  login.enter_password(password)
  sleep 4 
end

When('User can click on invisible or visible eye icon1') do
  @browser.find_element(:xpath, "//button[@class='PasswordField_toggle__jsS6D']").click
  sleep 5
  @browser.find_element(:xpath, "//button[@class='PasswordField_toggle__jsS6D']").click
end

When('User can click on the login button1') do
  # @browser.find_element(:xpath, "//button[@class='Button-module_root Button-module_medium Button-module_primary']").click
  login = LoginPage.new(@browser)
  login.loginbutton
  sleep 5
end

Then('User able to login1') do
  sleep 10
  @browser.close
end