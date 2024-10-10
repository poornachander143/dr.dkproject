require 'selenium-webdriver'
include RSpec::Matchers

class Demoqapage 

def initialize(driver)
  @browser = driver
end

def visitdemoqawebsite(demoqa_url)
  @browser.get(demoqa_url)
  sleep 5
  @browser.manage.window.maximize
  sleep 4
end

def demoqapracticeforms
  @browser.find_element(:xpath, "(//li[@class='btn btn-light '])[10]").click
  sleep 5
end


def firstname(first_Name)
  @browser.find_element(:id, "firstName").send_keys(first_Name)
  sleep 5
end

def lastname(last_Name)
  @browser.find_element(:id, "lastName").send_keys(last_Name)
  sleep 5
end

def emailid(email_ID)
  @browser.find_element(:id, "userEmail").send_keys(email_ID)
  sleep 5
end

def gender
  @browser.find_element(:xpath, "//label[@for='gender-radio-1']").click
  sleep 5
end

def mobilenumber(mobile)
  @browser.find_element(:id, "userNumber").send_keys(mobile)
  sleep 5
end

def dob
 # @browser.find_element(:xpath, "//input[contains(@id,'dateOfBirthInput')]").click
  date_input = @browser.find_element(:xpath, "//input[contains(@id,'dateOfBirthInput')]")
  sleep 5
  date_input.click
  sleep 5
  dropdown = @browser.find_element(:xpath, "//select[@class='react-datepicker__month-select']")
  select = Selenium::WebDriver::Support::Select.new(dropdown) # Initialize Select object
  select.select_by(:text, 'December')
  
  sleep 5
  
  dropdown1 = @browser.find_element(:xpath, "//select[@class='react-datepicker__year-select']")
  select1 = Selenium::WebDriver::Support::Select.new(dropdown1) # Initialize Select object
  select1.select_by(:value, '1980')
  
  day = @browser.find_element(:xpath, "//div[contains(@class, 'react-datepicker__day') and text()='21']")
  day.click
  sleep 5
  
end

def sub(subjects)
  @browser.find_element(:xpath, "//input[@id='subjectsInput']").send_keys(subjects)
  #sleep 4
  #@browser.find_element(:xpath, "//div[@id='subjectsContainer']").
  sleep 6
end

def hobbies
  hob = @browser.find_element(:xpath, "//label[@for='hobbies-checkbox-1']")
  sleep 4
  hob.click
  sleep 5
end

def currentplace(address)
  @browser.find_element(:xpath, "//textarea[@id='currentAddress']").send_keys(address)
  sleep 5
end

def state
  dropdown2 = @browser.find_element(:xpath, "//div[@id='state']")
  select2 = Selenium::WebDriver::Support::Select.new(dropdown2)
  select2.selct_by(:text, 'Haryana')
  sleep 5
end

def city
  dropdown3 = @browser.find_element(:xpath, "//div[@id='city']")
  select3 = Selenium::WebDriver::Support::Select.new(dropdown3)
  select3.select_by(:text, 'Karnal')
  sleep 5
end

def submitbutton
  @browser.find_element(:xpath, "//button[@id='submit']").click
  sleep 5
end
end
 