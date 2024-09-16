Given('User can open the automatenow homepage') do
  @browser.get("https://automatenow.com/demo-request/")
  sleep 4
end

When('User can click on First name textfield') do
  @browser.find_element(:xpath,"(//input[@placeholder='Fill'])[1]").send_keys("poornachander")
  sleep 4
end

When('User can click on Last name textfield') do
  @browser.find_element(:xpath,"(//input[@placeholder='Fill'])[2]").send_keys("vuppala")
  sleep 4
end

When('User can click on Phone number numberbox') do
  @browser.find_element(:xpath,"(//input[@placeholder='Fill'])[3]").send_keys('71451800')
  sleep 4
end

When('User can click on Company name textfield') do
  @browser.find_element(:xpath,"(//input[@placeholder='Fill'])[4]").send_keys("DR Kantiner")
  sleep 4
end

When('User can click on Business email textfield') do
  @browser.find_element(:xpath,"(//input[@placeholder='Fill'])[5]").send_keys("poornachander.v@gmail.com")
  sleep 4
end

When('User can click on Your message textfield') do
  @browser.find_element(:xpath,"(//textarea[@placeholder='Fill'])").send_keys("I like to register automation demo class")
  sleep 4
end

When('User can click on Mainframe automation checkbox') do
  @browser.find_element(:xpath,"(//input[@type='checkbox'])[3]").click
  sleep 4
end

When('User can click on Privacy Policy') do
  @browser.find_element(:xpath,"(//input[@type='checkbox'])[8]").click
  sleep 4
end

When('User can click on Send message button') do
  @browser.find_element(:xpath,"//button[@type='submit']").click
  sleep 4
end

Then('Usen can registered a Request for a demo sesssion') do
  pending # Write code here that turns the phrase above into concrete actions
end

