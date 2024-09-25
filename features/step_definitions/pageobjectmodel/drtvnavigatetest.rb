require 'selenium-webdriver'
require_relative 'C:\Users\LENOVO\OneDrive\Desktop\cucumberproject\pages\drtvnavigatetestpage.rb'

When('User can the DRradio website {string}') do |dr_homepage|
  $drtv = Drtvpage.new(@browser)
  $drtv.visitdrtvpage(dr_homepage)
  sleep 4
end

When('User can click on DRTV Hyperlink') do
  $drtv.drtvpage  
end

When('User can check the scroll down and scroll up page1') do
  $drtv.scrollingdrtvpage1
end  

When('User can navigate to LIVE Page') do
  $drtv.livepage
  
end

When('User can check the scroll down and scroll up page2') do
  $drtv.scrollingdrtvpage2
end

When('User can navigate to KATEGORIER Page') do
  pending # Write code here that turns the phrase above into concrete actions
end

When('User can check the scroll down and scroll up page3') do
  pending # Write code here that turns the phrase above into concrete actions
end

When('user can navigate to BARN Page') do
  pending # Write code here that turns the phrase above into concrete actions
end

When('User can check the scroll down and scroll up page4') do
  pending # Write code here that turns the phrase above into concrete actions
end

When('User can navigate to ULTRA Page') do
  pending # Write code here that turns the phrase above into concrete actions
end

When('User can check the scroll down and scroll up page5') do
  pending # Write code here that turns the phrase above into concrete actions
end

When('User can navigate to TV-GUIDE Page') do
  pending # Write code here that turns the phrase above into concrete actions
end

When('User can check the scroll down and scroll up page6') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('User is done sucessfull navigate regression test') do
  pending # Write code here that turns the phrase above into concrete actions
end



