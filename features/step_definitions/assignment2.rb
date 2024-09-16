Given('User open globalsqa URL1 {string}') do |url|
  @browser.get(url)
  sleep 3 
  @browser.find_element(:xpath, "//button[@aria-label='Consent']").click
  sleep 4
end

When('User can enter the name in text box value1 {string}') do |name|
  @browser.find_element(:xpath, "//input[@class='name']").send_keys(name)
  sleep 4
end

When('User can enter the Email value1 {string}') do |email|
  @browser.find_element(:xpath, "//input[@class='email']").send_keys(email)
   sleep 4
end

When('User can enter the website value1 {string}') do |website|
  @browser.find_element(:xpath, "//input[@class='url']").send_keys(website)
  sleep 4
end

When('User can choose the Experience in years') do
  dropdown=@browser.find_element(:xpath, "//select[@name='g2599-experienceinyears']")
  dropdown.click
  sleep 4
  select_list = Selenium::WebDriver::Support::Select.new(dropdown)
  select_list.select_by(:index, 1)
  sleep 5
end

When('User can choose expertise from the check box') do
  checkbox = @browser.find_element(:xpath, "//input[@value='Automation Testing']")
  checkbox.click
  sleep 4
end

When('User can choose education from the check box') do
  radiobutton = @browser.find_element(:xpath, "//input[@value='Post Graduate']")
  radiobutton.click
  sleep 4
end

When('User can click on Alerbox button') do
 
  alertbutton = @browser.find_element(:xpath, "//button[@onclick='myFunction()']")
  alertbutton.click
  alert=@browser.switch_to.alert
  alert.accept
  alert.accept
  sleep 3
  end

When('User can write some comments in the text box value1 {string}') do |comment|
  @browser.find_element(:xpath, "//textarea[@class='textarea']").send_keys(comment)
end

When('User can click on the the submit button') do
  @browser.find_element(:xpath, "//button[@type='submit']").click
end

Then('User can complete the registration form.') do
  @browser.find_element(:xpath, "/html/body/div/header/div[2]/div/div/div[3]/div/ul/li[1]/a").click
end

When('User can took screenshot') do
  @browser.save_screenshot('C:\Users\LENOVO\OneDrive\Desktop\screenshot\image.png')
end

When('User can navigate to About button') do
  @browser.navigate.forward
  @browser.find_element(:xpath, "//li[@id='menu-item-53896']//a[normalize-space()='About']")
  sleep 2
  @browser.switch_to.frame(:xpath, "(//iframe[@id='ad_iframe'])[1]")
  sleep 3
  @browser.find_element(:xpath, "//div[@id='dismiss-button']").click
  sleep 4
end

When('User can also navigate to chatsheets') do
  @browser.navigate.forward
  sleep 3
  @browser.find_element(:xpath, "//li[@id='menu-item-6898']//a[normalize-space()='CheatSheets']").click
  sleep 4
end

When('User can also navigate to Free ebooks') do
  @browser.navigate.forward
  sleep 4
  @browser.find_element(:xpath, "//a[@class='no_border'][normalize-space()='Free Ebooks']").click
 
end

