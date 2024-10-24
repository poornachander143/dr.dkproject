require 'selenium-webdriver'
require_relative 'C:\Users\LENOVO\OneDrive\Desktop\cucumberproject\pages\hiperfiberpage.rb'

Given('User can open the hiper fiberinternet {string}') do |hiperurl|
  $hiperpage = Hiperpage.new(@browser)
  $hiperpage.visithiperwebsite(hiperurl)
end

When('User can enter the address to search the internet {string}') do |customeraddress|
  $hiperpage.homeaddress(customeraddress)
end

When('User can click on fibernet on broadband dropbox') do
  $hiperpage.broadband
end

When('User can navigate to help and click on mit abnoment on help dropbox') do
  $hiperpage.help
end

When('User can navigate to OM US and click on ledige jobs on OM US dropbox') do
  $hiperpage.omos
end

When('User can navigate to kontakt') do
  $hiperpage.contact
end

When('User can navigate to Mit Hiper') do
  $hiperpage.mithiper
end

When('User can scroll down and scroll up') do
  $hiperpage.scrolling
end

When('User can open the vismalogbuy {string}') do |logbuyurl|
  #$logbuypage = Hiperpage.new(@browser)
  $logbuypage.logbuywebsite(logbuyurl)
end

When('User can test the chatbox') do
  $logbuypage.logbuychat
end

Then('User done sucessfully with testing the chatbox') do
  $logbuypage.logbuychatsuccess
end



