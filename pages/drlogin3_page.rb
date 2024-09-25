require 'selenium-webdriver'

class LoginPage
 # Url = 'https://www.dr.dk/'

  def initialize(driver)
    @browser = driver
  end

  def visit(url)
    @browser.navigate.to(url)
    @browser.find_element(:name, 'submitAll').click;
    @browser.manage.window.maximize
  end
  
  def click_loginbutton
    @browser.find_element(:xpath, '//a[@class="dre-navigation-login__login-action"]').click;
  end

  def enter_username(userName)
    @browser.find_element(:name, 'email').send_keys(userName)
  end
  
  def nextbutton
    @browser.find_element(:xpath, '//button[@type="button"]').click
  end

  def enter_password(password)
    @browser.find_element(:xpath, "//input[@id='password']").send_keys(password)
  end

  def loginbutton
    @browser.find_element(:xpath, "//button[@class='Button-module_root Button-module_medium Button-module_primary']").click
  end

end
