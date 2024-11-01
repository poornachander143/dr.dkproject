require 'selenium-webdriver'
include RSpec::Matchers

class Hiperpage
  
  def initialize(driver)
    @browser = driver
  end
  
  def visithiperwebsite(hiperurl)
    @browser.get(hiperurl)
    sleep 4
    @browser.find_element(:xpath,"//button[@aria-label='Accepter alle']").click
    sleep 5
    @browser.manage.window.maximize
    sleep 5
  end
  
  def homeaddress(customeraddress)
    input = @browser.find_element(:xpath, "//input[@name='address_field']")
    sleep 3
    input.send_keys(customeraddress)
    sleep 3 
    #input.send_keys(Selenium::WebDriver::Keys::RETURN)
    
    #@browser.find_element(:xpath, "//font[contains(text(),'Clara Pontoppidans Vej 89, 2. th, 2500 Valby')]").click
    #sleep 4
    input1 = @browser.find_element(:xpath, "//span[@id='continue-button']")
    input1.click
    sleep 3
    input1.click
    sleep 5
  end
  
  def broadband
    element = @browser.find_element(:xpath, "//span[@class='menu-label'][normalize-space()='Bredbånd']")
    @browser.action.move_to(element).perform
    sleep 4
    submenu = @browser.find_element(:xpath, "//span[@class='menu-label'][normalize-space()='Fibernet']")
    sleep 3
    submenu.click
    #sleep 3
    #@browser.navigate.back
    sleep 4
    end
    
  def help
    @browser.navigate.forward
    sleep 3
    element1 = @browser.find_element(:xpath,"//span[@class='menu-label'][normalize-space()='Hjælp']")
    @browser.action.move_to(element1).perform
    sleep 4
    submenu1 = @browser.find_element(:xpath, "//span[normalize-space()='Mit abonnement']")
    sleep 3
    submenu1.click
    #sleep 3
    #@browser.navigate.back
    sleep 4
  end
  
  def omos
    @browser.navigate.forward
    sleep 3
    element2 = @browser.find_element(:xpath, "//span[normalize-space()='Om Os']")
    @browser.action.move_to(element2).perform
    sleep 4
    submenu2 = @browser.find_element(:xpath, "//span[normalize-space()='Ledige jobs']")
    sleep 3
    submenu2.click
    sleep 4
  end
  
  def contact
    @browser.navigate.forward
    sleep 3
    @browser.find_element(:xpath, "//span[normalize-space()='Kontakt']").click
    sleep 4
  end
  
  def mithiper
    @browser.navigate.forward
    sleep 3
    @browser.find_element(:xpath, "//span[normalize-space()='Mit Hiper']").click
    sleep 4
  end
  
  def scrolling
    @browser.execute_script("window.scrollTo(0, document.body.scrollHeight)")
    sleep 4
    @browser.execute_script("window.scrollTo(document.body.scrollHeight, 0)")
    sleep 4
  end
  
  def logbuywebsite(logbuyurl)
    @browser.navigate.to(logbuyurl)
    sleep 4
    @browser.find_element(:xpath, "//button[@class='consent__btn btn--accept btn--accept-all']").click
    sleep 4
  end
  
  def logbuychat
    @browser.switch_to.frame("hubspot-conversations-iframe")
    sleep 4
    @browser.find_element(:xpath,"//button[@aria-label='Åbn live chat']").click
    sleep 4
    @browser.find_element(:xpath, "//button[@aria-label='Luk live chat']").click
    sleep 4
  end
  
  def logbuychatsuccess
    @browser.switch_to.default_content
    sleep 3
    @browser.find_element(:xpath, "(//a[@class='elements-link-buttons_module_16106654906244'])[2]").click
    sleep 4
    @browser.save_screenshot("C:\Users\LENOVO\OneDrive\Desktop\screenshot.png")
    sleep 4
  end  
    
  def loginwithcheckbox
    @browser.find_element(:xpath, "//button[@class='  btn-primary-dark']").click
    sleep 3
  end
  
  def dropdownwebsite(dropdownurl)
    @browser.navigate.to(dropdownurl)
    sleep 5
    
  end
  
  def dropdownlist
    dropdown = @browser.find_element(:xpath, "//select[@id='dropdown']")
    dropdown.click
    sleep 4
    select = Selenium::WebDriver::Support::Select.new(dropdown)
    select.select_by(:text, "Option 1")
    sleep 4
   
    dropdownyear = @browser.find_element(:xpath, "//select[@id='year']")
    dropdownyear.click
    sleep 4
    selectyear = Selenium::WebDriver::Support::Select.new(dropdownyear)
    selectyear.select_by(:index, 24)
    sleep 4
    
    dropdownmonth =  @browser.find_element(:id, "month")
    dropdownmonth.click
    sleep 4
    selectmonth = Selenium::WebDriver::Support::Select.new(dropdownmonth)
    selectmonth.select_by(:text, "December")
    sleep 4
    
    dropdownday =  @browser.find_element(:id, "day")
    dropdownday.click
    sleep 5
    selectday = Selenium::WebDriver::Support::Select.new(dropdownday)
    selectday.select_by(:value, '20')
    sleep 4
    
    dropdownstate =  @browser.find_element(:id, "state")
    dropdownstate.click
    sleep 4
    selectstate = Selenium::WebDriver::Support::Select.new(dropdownstate)
    selectstate.select_by(:text, "Illinois")
    sleep 4
    
    @browser.find_element(:xpath, "//option[@value='python']").click
    sleep 4
        
    #@browser.find_element(:xpath, "//a[@id='dropdownMenuLink']").click
    
   # sleep 4
    #selectmenu = Selenium::WebDriver::Support::Select.new(dropdownmenu)
    #selectmenu.select_by(:xpath, "//a[normalize-space()='Google']")
    #sleep 4
  end
  
  def dropdownsuccessfully
    @browser.close
  end
  
  def checkboxwebsite(checkboxurl)
    @browser.navigate.to(checkboxurl)
    sleep 4
  end
  
  def checkbox
    @browser.find_element(:xpath, "//input[@id='c_bs_1']").click
    sleep 4
  end
  
  def radiobutton
    @browser.find_element(:xpath, "//a[normalize-space()='Radio Button']").click
    sleep 4
    @browser.find_element(:xpath, "//input[@value='igotthree']").click
    sleep 4
  end
  
  def alertbox
    @browser.find_element(:xpath, "//button[@class='accordion-button']").click
    sleep 3
    @browser.find_element(:xpath, "//a[normalize-space()='Alerts']").click
    sleep 4
    @browser.find_element(:xpath, "(//button[@class='btn btn-primary'])[1]").click
    sleep 4
    alert1 = @browser.swith_to.alert
    alert1.click
    sleep 4
  end
  
  def webelementssuccessfully
    @browser.close
  end

  end