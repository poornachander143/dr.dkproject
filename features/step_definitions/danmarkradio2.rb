Given('User open DR URL {string}') do |url|
  @browser.get(url)
  sleep 4
  @browser.find_element(:name, 'submitAll').click;
end

When('User can enter the username value {string}') do |email|
  @browser.find_element(:name, 'email').send_keys(email)
  sleep 4
end

When('User can click on the next button1') do
  @browser.find_element(:xpath, '//button[@type="button"]').click
  sleep 4
end

When('User can enter the password value {string}') do |password|
  @browser.find_element(:id, 'password').send_keys(password)
  sleep 3 
end