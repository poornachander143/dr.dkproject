Given('User can open HYRTurorials website {string}') do |url|
  @browser.get(url)
  sleep 3
  @browser.manage.window.maximize;
  sleep 3
  @browser.find_element(:xpath, "//p[@class='fc-button-label']").click
  sleep 4
end

When('User can switch to frame1') do
  @browser.switch_to.frame("frm1")
  sleep 3
end

When('User can select Telugu option from dropdown box') do
  dropdown=@browser.find_element(:id, "selectnav1")
    dropdown.click
    sleep 4
    select_list = Selenium::WebDriver::Support::Select.new(dropdown)
    select_list.select_by(:index, 20)
    sleep 5
end

When('User can also select Course name') do
  dropdown1=@browser.find_element(:xpath, " //select[@id='course']")
      dropdown1.click
      sleep 4
      select_list = Selenium::WebDriver::Support::Select.new(dropdown1)
      select_list.select_by(:index, 3 )
      sleep 4
 
end

Then('USer can come out from the frame1') do
  @browser.switch_to.default_content
  sleep 4
end

When('User can switch to frame2') do
 @browser.switch_to.frame("frm2")
 sleep 4
end

When('User can enter the firstname in textbox {string}') do |firstname|
  @browser.find_element(:xpath, "//input[@id='firstName']").send_keys(firstname)
  sleep 4
end

When('User can enter the lastname in textbox  {string}') do |lastname|
  @browser.find_element(:xpath, "//input[@id='lastName']").send_keys(lastname)
  sleep 4
end

When('User can choose gender') do
  @browser.find_element(:xpath, "//input[@id='malerb']").click
  sleep 5
end

When('User can choose languages from checkbox') do
  @browser.find_element(:xpath, "//input[@id='englishchbx']").click
  sleep 5
end

When('User can enter email address in textbox {string}') do |emailid|
  @browser.find_element(:xpath, "//input[@id='email']").send_keys(emailid)
  sleep 4
end

Then('User can registered') do
  pending # Write code here that turns the phrase above into concrete actions
end




