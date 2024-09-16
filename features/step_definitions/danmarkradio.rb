Given('User open DR website') do
  @browser.get("https://www.dr.dk/")
  sleep 4
  @browser.find_element(:name, 'submitAll').click;
end

When('User can click on login button') do
  @browser.find_element(:xpath, '//a[@class="dre-navigation-login__login-action"]').click;
  sleep 4
end

When('User can enter the username') do
 @browser.find_element(:name, 'email').send_keys("poornachander.v@gmail.com")
 sleep 4
end

When('User can click on the next button') do
  @browser.find_element(:xpath, '//button[@type="button"]').click
  sleep 4
end

When('User can enter the password') do
  @browser.find_element(:id, 'password').send_keys("Kanna@143143")
  sleep 3 
end

When('User can click on invisible or visible eye icon') do
  @browser.find_element(:xpath, "//button[@class='PasswordField_toggle__jsS6D']").click
  sleep 5
  @browser.find_element(:xpath, "//button[@class='PasswordField_toggle__jsS6D']").click
  
end

When('User can click on the login button') do
  @browser.find_element(:xpath, "//button[@class='Button-module_root Button-module_medium Button-module_primary']").click
  sleep 5
end

Then('User able to login') do
  expect(@browser.find_element(:xpath, "//button[text()='p']").text).to include('p')
end