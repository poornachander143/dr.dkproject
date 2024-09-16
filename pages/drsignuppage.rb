require 'selenium-webdriver'

class SignupPage
 # Url = 'https://www.dr.dk/'

  def initialize(drive)
    @browser = drive
  end

  def visit(website)
    @browser.navigate.to(website)
    @browser.manage.window.maximize
    @browser.find_element(:name, 'submitAll').click;
  end
  
  def click_loginbutton
    @browser.find_element(:xpath, '//a[@class="dre-navigation-login__login-action"]').click;
  end

  def enter_username(userName1)
    @browser.find_element(:name, 'email').send_keys(userName1)
  end
  
  def nextbutton
    @browser.find_element(:xpath, '//button[@type="button"]').click
  end

  def enter_password(password)
    @browser.find_element(:xpath, "//input[@id='password']").send_keys(password)
  end

  def invisibleorvisible
    @browser.find_element(:xpath, "//button[@class='PasswordField_toggle__jsS6D']").click
   
    @browser.find_element(:xpath, "//button[@class='PasswordField_toggle__jsS6D']").click
    end
    
  def nextbutton1
    @browser.find_element(:xpath, "//button[@class='Button-module_root Button-module_medium Button-module_primary']").click
  end
  
  def entername(name)
    @browser.find_element(:xpath,"//input[@id='given_name']").send_keys(name)
  end
  
  def logindbutton1
    @browser.find_element(:xpath, "//button[@class='Button-module_root Button-module_medium Button-module_primary']").click
  end
  
  def readmore
    @browser.find_element(:xpath, "//button[@class='Button-module_root Button-module_medium Button-module_link']").click
  end
  
  def jatak1
    @browser.find_element(:xpath, "//button[@class='ctaAccept Button-module_root Button-module_medium Button-module_primary']").click
  end
  
  def jatak2
    @browser.find_element(:xpath, "//button[@class='ctaAccept Button-module_root Button-module_medium Button-module_primary']").click
  end
  
  def jatak3
    @browser.find_element(:xpath, "//button[@class='ctaAccept Button-module_root Button-module_medium Button-module_primary']").click
  end
  
  def yopmail(website1)
    @browser.get(website1)
     
    @browser.find_element(:xpath, "//button[@class='fc-button fc-cta-consent fc-primary-button']").click
  end
  
  def yopmailuserid(yopmailusername)
    @browser.find_element(:xpath,"//input[@id='login']").send_keys(yopmailusername)
  end
  
  def yopmailnext
    @browser.find_element(:xpath,"//i[@class='material-icons-outlined f36']").click
  end
  
  def yopmailinbox
    @browser.switch_to.frame("ifmail")
     
    @browser.find_element(:xpath,"//span[contains(text(),'Bekræft e-mail')]").click
  end
  
  def accountsuccess
    @browser.close
  end
  
end