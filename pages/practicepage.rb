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
  
end
end
 

end