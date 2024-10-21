Feature: Testing the demoqa 
Scenario Outline: Testing the demoqa with all elements
Given User can open the demoqa url "<demoqa_url>"
When User can click on practie form hyperlink
When User can enter the First Name "<first_Name>"
When User can enter the Last Name  "<last_Name>"
When User can enter the QAEmailid "<email_ID>"
When User can choose gender on practice page
When User can enter the mobile number "<mobile>"
When User can enter the Date Of Birth 
When User can enter the Subject "<subjects>"
When User can click on hobies list
When User can enter the address "<address>"
When User can choose state
When User can choose the city
And  User can click on submit button
Then User can done sucessfully signup


Examples:

|demoqa_url								|first_Name			|last_Name			|email_ID											|mobile									|subjects	      					|address			|
|https://demoqa.com/forms	|poornachander	|vuppala				|poornachander.v@gmail.com		|4571451800							|automation								|Valby				|