require 'selenium-webdriver'
require_relative 'C:\Users\LENOVO\OneDrive\Desktop\cucumberproject\pages\practicepage.rb'
When('User can open the demoqa url {string}') do |demoqa_url|
  $demoqa = Demoqapage.new(@browser)
  $demoqa.visitdemoqawebsite(demoqa_url)
  expect(@browser.current_url).to eq('https://demoqa.com/forms')
end

When('User can click on practie form hyperlink') do
$demoqa.demoqapracticeforms
end

When('User can enter the First Name {string}') do |first_Name|
 @element = @browser.find_element(:xpath, "//label[@id='userName-label']")
 expect(@element.displayed?).to be true
 $demoqa.firstname(first_Name)
end

When('User can enter the Last Name  {string}') do |last_Name|
  $demoqa.lastname(last_Name)
end

When('User can enter the QAEmailid {string}') do |email_ID|
  $demoqa.emailid(email_ID)
end

When('User can choose gender on practice page') do
  $demoqa.gender
end

When('User can enter the mobile number {string}') do |mobile|
  $demoqa.mobilenumber(mobile)
end

When('User can enter the Date Of Birth') do
  $demoqa.dob
end

When('User can enter the Subject {string}') do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

When('User can click on hobies list') do
  pending # Write code here that turns the phrase above into concrete actions
end

When('User can enter the address {string}') do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

When('User can choose state') do
  pending # Write code here that turns the phrase above into concrete actions
end

When('User can choose the city') do
  pending # Write code here that turns the phrase above into concrete actions
end

When('User can click on submit button') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('User can done sucessfully signup') do
  pending # Write code here that turns the phrase above into concrete actions
end

