Given('User open DR URL2 {string}') do |url2|
  @browser.get(url2)
   sleep 4
   @browser.find_element(:name, 'submitAll').click;
end

When('User can click on login button3') do
  @browser.find_element(:xpath, '//a[@class="dre-navigation-login__login-action"]').click;
  sleep 4
end


When('User can enter the usernames value {string}') do |userNames|
  @browser.find_element(:name, 'email').send_keys(userNames)
    sleep 4
end

When('User can click on the next button3') do
  @browser.find_element(:xpath, '//button[@type="button"]').click
   sleep 5
end

When('User can enter the passwords value {string}') do |passwords|
  @browser.find_element(:id, 'password').send_keys(passwords)
   sleep 4 
end

When('User can click on the login button2') do
  @browser.find_element(:xpath, "//button[@class='Button-module_root Button-module_medium Button-module_primary']").click
    sleep 5
end

When('User can click on user profile') do
  @browser.find_element(:xpath, "//button[@class='dre-navigation-login__avatar dre-navigation-login__avatar--static']").click
  sleep 5
end

When('User can click on settings') do
  @browser.find_element(:xpath, "//a[@class='dre-navigation-bottom-links__settings-link dre-navigation-bottom-links__settings-link--narrow']").click
  sleep 5
end

When('User can click on delete login') do
  element = @browser.find_element(:xpath, "(//button[@type='button'])[12]")
  # @driver.execute_script("arguments[0].scrollIntoView(true);", element)
  element.click
  sleep 5
  @browser.find_element(:xpath, "(//button[@class='Button-module_root Button-module_medium Button-module_primary'])[2]").click
  sleep 3
end

Then('User able to delete username') do
  sleep 10
  @browser.close
end

