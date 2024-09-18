require 'selenium-webdriver'
require 'rspec/expectations'
include RSpec::Matchers

class Facebookloginpage

def initialize(driver)
  @browser = driver
end

def visitwebsite(facebook_url)
  @browser.get(facebook_url)
  sleep 4
 # @browser.window.manage.maximize
  #sleep 5
  @browser.find_element(:xpath, "(//span[@class='x1lliihq x6ikm8r x10wlt62 x1n2onr6 xlyipyv xuxw1ft'])[7]").click
  sleep 4
end

def facebooklogin(facebook_username)
  @browser.find_element(:xpath, "//input[@name='email']").send_keys(facebook_username)
  sleep 5
end

def facebookpassword(facebook_password)
  @browser.find_element(:xpath, "//input[@name='pass']").send_keys(facebook_password)
end

def invisibleorvisiblepassword
  @browser.find_element(:xpath, "//input[@name='jazoest']").click
  sleep 4
  @browser.find_element(:xpath, "//input[@name='lsd']").click
end

def facebookloginbutton
  #@bowser.find_element(:xpath, "//button[@name='login']").click
  @browser.find_element(:xpath, "//button[@name='login']").click
  sleep 5
end

def successfulllogin
  element = @browser.find_element(:xpath, "(//span[@class='x1lliihq x6ikm8r x10wlt62 x1n2onr6'])[1]")
  
  # Get the text from the element
  text = element.text
  #expect(@browser.find_element(:xpath, "(//span[@class='x1lliihq x6ikm8r x10wlt62 x1n2onr6'])[1]").text).to eq('Vuppala Poornachander')
  expect(text).to eq('Vuppala Poornachander')
end
end

