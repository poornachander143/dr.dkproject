Given('User can open the amazonindia homepage') do
  @browser.get("https://www.amazon.in/")
  sleep 5
end

When('User can click on Hello signin button') do
  @browser.find_element(:xpath, "//a[@id='nav-link-accountList']").click
  sleep 5
end

When('User can enter mobile number or email in textfield') do
  @browser.find_element(:xpath, "//input[@type='email']").send_keys("tanuja.donthamsetty@gmail.com")
  sleep 4
end

When('User can click on continue button') do
  @browser.find_element(:xpath, "//input[@class='a-button-input']").click
  sleep 4
end

When('User can enter on Password in textfield') do
  @browser.find_element(:xpath, "//input[@type='password']").send_keys("kanna143143")
  sleep 4
end

When('User can click on signin button') do
  @browser.find_element(:xpath, "//input[@type='submit']").click
  sleep 5
end

When('User can click on All search in') do
  @browser.find_element(:xpath, "//select[@name='url']").click
  sleep 1
end

When('User can click on to search Elecronics category') do
  @browser.find_element(:xpath, "//select[@name='url']//..//option[@value='search-alias=electronics']").click
  sleep 4
end

When('User can search iphone in search in textfield') do
  @browser.find_element(:xpath, "//input[@placeholder='Search Amazon.in']").send_keys("iphone")
  sleep 4
end

When('User can click on iphone {int} pro max') do |int|
  @browser.find_element(:xpath, "//div[@aria-label='iphone 15 pro']").click
  sleep 4
end

When('User can scroll down to brands check box') do
  @browser.find_element(:xpath, "(//i[@class='a-icon a-icon-checkbox'])[1]").click
  sleep 4
end

When('User can again scroll down to see more brands') do
  @browser.find_element(:xpath, "//span[@class='a-expander-prompt'][contains(.,'See more')]").click
  sleep 5
end

When('User can click on iphone color radio button') do
  @browser.find_element(:xpath, "(//span[@class='s-color-swatch-inner-circle-border'])[2]").click
  sleep 4
end

When('User can click on skip button to no need Add protection') do
  pending # Write code here that turns the phrase above into concrete actions
end

When('User can click on With Exchange radio button') do
  @browser.find_element(:xpath, "//i[@class='a-icon a-accordion-radio a-icon-radio-inactive']").click
end

When('User can click on choose phone to exchange button') do
  @browser.find_element(:xpath, "//input[@aria-labelledby='chooseButton-announce']").click
  sleep 4
end

When('User can click on Select Brands drop down buton') do
  dropdown = @browser.find_element(:xpath, "//span[@id='buyBackDropDown1Id']//span[@class='a-button-text a-declarative']")
  dropdown.click
  sleep 4
  @browser.find_element(:xpath, "//a[@id='buyBackDropDown1_2']").click
  sleep 3
end

When('User can click on Select Model drop down button') do
  dropdown = @browser.find_element(:xpath, "//span[@id='AppleId']//span[@class='a-dropdown-prompt'][normalize-space()='Select Model']")
  dropdown.click
  sleep 4
  @browser.find_element(:xpath, "//a[@id='Apple_5']").click
  sleep 3
end

When('User can click on Select Ram and storage drop down button') do
  dropdown = @browser.find_element(:xpath, "(//span[@class='a-button-text a-declarative'][contains(.,'Select RAM and Storage')])[12]")
  dropdown.click
  sleep 4
  @browser.find_element(:xpath, "//a[@tabindex='-1'][contains(@id,'1')][contains(.,'256GB')]").click
  sleep 5
end

When('User can click on Screen damage check box') do
  @browser.find_element(:xpath,"//input[@id='screenBodyDamageCheckbox']").click
  sleep 5
  @browser.find_element(:xpath,"(//i[@class='a-icon a-icon-checkbox'])[10]").click
  sleep 5
  @browser.find_element(:xpath,"//span[@id='value-commensurate-with-granularity-continue-button']").click
  sleep 5
end

When('User can enter IMEI number on text field') do
  @browser.find_element(:xpath, "//input[@type='number']").send_keys("356692115637187")
  sleep 5
end

When('User can click on verify button') do
  @browser.find_element(:xpath, "//span[@id='buyBackApplyButton']").click
  sleep 5
end

When('User can click on Apply Exchange button') do
  @browser.find_element(:xpath, "//span[@id='applyBuyBack-announce']").click
  sleep 5 
end

When('User can click on Add a cart button') do
  @browser.find_element(:xpath, "submit.add-to-cart-announce").click
  sleep 5
end

When('User can click on proceed to checkout button') do
  pending # Write code here that turns the phrase above into concrete actions
end

When('User can choose delivery address Radio button') do
  pending # Write code here that turns the phrase above into concrete actions
end



