Feature: Tesing HYRtutorials URL

Scenario Outline: Testing HYRturorials Frames 

Given  User can open HYRTurorials website "<url>"
When  User can switch to frame1
When  User can select Telugu option from dropdown box
When  User can also select Course name
Then  USer can come out from the frame1
When  User can switch to frame2

When  User can enter the firstname in textbox "<firstname>"
When  User can enter the lastname in textbox  "<lastname>"
When  User can choose gender 
When  User can choose languages from checkbox
When  User can enter email address in textbox "<emailid>"
Then  User can registered
 


Examples: 

|url                                        					|firstname             |lastname				|	emailid									 |
|https://www.hyrtutorials.com/p/frames-practice.html  |chandu    							|vuppala 					|poornachander.v@gmail.com |
