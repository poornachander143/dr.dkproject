Given('User open DR1 website {string}') do |drwebsite|
 @browser.get(drwebsite)
 sleep 3
 @browser.manage.window.maximize
 sleep 4
 @browser.find_element(:name, 'submitAll').click;
 sleep 4
end

When('User can click on Nyheder hyperlink1') do
  @browser.find_element(:xpath, "/html/body/div[2]/div/div[2]/div[1]/div/div[1]/div[2]/div[1]/div/div/a[1]").click
  sleep 4
end

When('User can do page scroll down1') do
  @browser.execute_script("window.scrollTo(0, document.body.scrollHeight)")
  sleep 4
end

When('User can do page scroll up1') do
  @browser.execute_script("window.scrollTo(document.body.scrollHeight, 0)")
end

When('User can navigate to Indland hyperlink1') do
  @browser.navigate.forward
  sleep 4
  @browser.find_element(:xpath, "(//a[@class='dre-navigation-menu-bar__item-link'])[1]").click
  sleep 4
end

When('User can click on an artikle in Indland page1') do
  @browser.find_element(:xpath, "//a[@href='/nyheder/indland/liveblog-se-opdateringer']").click
  sleep 4
end

When('User can do Indland page scroll down and up1') do
  @browser.execute_script("window.scrollTo(0, document.body.scrollHeight)")
  sleep 4
  @browser.execute_script("window.scrollTo(document.body.scrollHeight, 0)")
  sleep 4
end

When('User can navigate to Udland hyperlink1') do
  @browser.navigate.forward
  sleep 4
  @browser.find_element(:xpath, "(//li[@class='dre-navigation-menu-bar__item'])[3]").click
  sleep 4
end

When('User can do udland page scroll down and up1') do
  @browser.execute_script("window.scrollTo(0, document.body.scrollHeight)")
  sleep 4
  @browser.execute_script("window.scrollTo(document.body.scrollHeight, 0)")
  sleep 4
end

When('User can click on an artikle in udland page1') do
  @browser.find_element(:xpath, "//img[@alt='Illum repellendus ut quisquam laudantium ipsam']").click
  sleep 3
  @browser.execute_script("window.scrollTo(0, document.body.scrollHeight)")
  sleep 4
  @browser.execute_script("window.scrollTo(0, document.body.scrollHeight)")
  sleep 3 
 end

When('User can navigate to Penge hyperlink1') do
  @browser.navigate.forward
    @browser.find_element(:xpath, "(//li[@class='dre-navigation-menu-bar__item'])[4]").click
end

When('User can click on an artikle in Penge page1') do
  @browser.find_element(:xpath, "//div[@class='dre-article-teaser']//img[@alt='Dignissimos voluptatibus earum rerum veniam dolor ea']").click
  sleep 4
end

When('User can do udland Penge page scroll down and up1') do
  @browser.execute_script("window.scrollTo(0, document.body.scrollHeight)")
  sleep 4
  @browser.execute_script("window.scrollTo(0, document.body.scrollHeight)")
  sleep 4
end

When('User can navigate to Politiks hyperlink1') do
  @browser.navigate.forward
  sleep 3
  @browser.find_element(:xpath, "(//a[@class='dre-navigation-menu-bar__item-link'])[5]").click
  sleep 4
end

When('User can click on an artikle in Politiks page1') do
  @browser.find_element(:xpath, "(//img[contains(@class,'dre-picture__image')])[1]").click
  sleep 3
end

When('User can do udland Politiks page scroll down and up1') do
  @browser.execute_script("window.scrollTo(0, document.body.scrollHeight)")
  sleep 4
  @browser.execute_script("window.scrollTo(0, document.body.scrollHeight)")
  sleep 4
  @browser.navigate.back
  sleep 2
  @browser.navigate.back
  sleep 3
end

When('User can navigate to Regionally hyperlink1') do
  @browser.navigate.to("https://preprod.dr.dk/nyheder/regionale")
  sleep 3
  @browser.save_screenshot('C:\Users\LENOVO\OneDrive\Desktop\screenshot\image.png')
end

When('User can click on profile button1') do
  pending # Write code here that turns the phrase above into concrete actions
end

When('User can click on logout button1') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('User can logout from the homepage1') do
  pending # Write code here that turns the phrase above into concrete actions
end