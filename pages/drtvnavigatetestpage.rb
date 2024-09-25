require 'selenium-webdriver'

class Drtvpage
 # Url = 'https://www.dr.dk/'

  def initialize(driver)
    @browser = driver
  end

  def visitdrtvpage(dr_homepage)
    @browser.get(dr_homepage)
    @browser.find_element(:name, 'submitAll').click
    @browser.manage.window.maximize
    sleep 4
  end
  
  def drtvpage
    @browser.find_element(:xpath, "(//a[@class='dre-navigation-main-links__item'])[1]").click
    sleep 3
  end
  
  def scrollingdrtvpage1
    @browser.execute_script("window.scrollTo(0, document.body.scrollHeight)")
    
    @browser.execute_script("window.scrollTo(document.body.scrollHeight, 0)")
  end 
    
  def livepage
    @browser.navigate.forward
    sleep 4
    @browser.find_element(:xpath, "//a[@aria-current='page'][normalize-space()='LIVE']").click
    sleep 4
  end
  
  def scrollingdrtvpage2
    @browser.execute_script("window.scrollTo(0, document.body.scrollHeight)")
        
    @browser.execute_script("window.scrollTo(document.body.scrollHeight, 0)")
  end
  
  end