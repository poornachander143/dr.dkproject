require 'selenium-webdriver'
require_relative 'C:\Users\LENOVO\OneDrive\Desktop\cucumberproject\pages\facebookexample1page.rb'


Given('when user can open facebook url {string}') do |facebook_url|
  $facebook = Facebookloginpage.new(@browser)
  $facebook.visitwebsite(facebook_url)
end

When('User can enter the username in textbox {string}') do |facebook_username|
  $facebook.facebooklogin(facebook_username)
end

When('User can enter the password in textbox {string}') do |facebook_password|
  $facebook.facebookpassword(facebook_password)
end

When('User can click on visible and invisible eye visible to see and hide the password') do
  pending # Write code here that turns the phrase above into concrete actions
end

When('User can click on the facebook login button') do
  $facebook.facebookloginbutton
end

Then('User can login sucessfully') do
  $facebook.successfulllogin
end