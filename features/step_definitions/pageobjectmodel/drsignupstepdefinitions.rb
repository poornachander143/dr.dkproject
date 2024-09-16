require 'selenium-webdriver'
require_relative 'C:\Users\LENOVO\OneDrive\Desktop\cucumberproject\pages\drsignuppage.rb'



Given('User open DR website {string}') do |website|
 #$login = SignupPage.new(@browser)
 $login.visit(website)
 sleep 4
end

When('User can click on logind button') do
  #$login = SignupPage.new(@browser)
  $login.click_loginbutton
  sleep 4
end

When('User can enter the username1 {string}') do |userName1|
  #$login = SignupPage.new(@browser)
  $login.enter_username(userName1)
  sleep 4
end

When('User can tap on the next button') do
  #$login = SignupPage.new(@browser)
  $login.nextbutton
  sleep 4
end

When('User can enter the password  {string}') do |password1|
  #$login = SignupPage.new(@browser)
  $login.enter_password(password1)
  sleep 4
end

When('User can click on invisible or visible eye icon hyperlink') do
  #$login = SignupPage.new(@browser)
  $login.invisibleorvisible
  sleep 4
end

When('User can click on next button1') do
  #$login = SignupPage.new(@browser)
  $login.nextbutton1
  sleep 4
end

When('User can enter the name in the text box {string}') do |name|
  #$login = SignupPage.new(@browser)
  $login.entername(name)
  sleep 4
end

When('User can click on the next logind button1') do
  #$login = SignupPage.new(@browser)
  $login.logindbutton1
  sleep 4
end

When('User can click on read more button') do
  #$login = SignupPage.new(@browser)
  $login.readmore
  sleep 4
end

When('User can click on JATak button1') do
  #$login = SignupPage.new(@browser)
  $login.jatak1
  sleep 4
end

When('User can click on JATak button2') do
  #$login = SignupPage.new(@browser)
  $login.jatak2
  sleep 4
end

When('User can click on JATak button3') do
  #$login = SignupPage.new(@browser)
  $login.jatak3
  sleep 4
end

When('User can click on Yopmail website {string}') do |website1|
  #$login1 = SignupPage.new(@browser)
  $login1.yopmail(website1)
  sleep 4
end

When('User can enter yopmail id in username text box {string}') do |yopmailusername|
  #$login1 = SignupPage.new(@browser)
  $login1.yopmailuserid(yopmailusername)
  sleep 4
end

When('User can click on next yopmail button') do
  #$login1 = SignupPage.new(@browser)
  $login1.yopmailnext
  sleep 4
end

When('User can enter into inbox messages and User can click on the confirmation email') do
  #$login1 = SignupPage.new(@browser)
  $login1.yopmailinbox
  sleep 4
end

Then('User can able to create account successfully') do
  sleep 15
  #$login1 = SignupPage.new(@browser)
  $login1.accountsuccess
end
