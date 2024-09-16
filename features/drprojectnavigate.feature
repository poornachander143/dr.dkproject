Feature: Testing on Danmarks radio regression testing

Scenario Outline: Testing DR website

Given User open DR1 website "<drwebsite>"
When  User can click on Nyheder hyperlink1
When  User can do page scroll down1
And   User can do page scroll up1
When  User can navigate to Indland hyperlink1
And   User can click on an artikle in Indland page1
When  User can do Indland page scroll down and up1
When  User can navigate to Udland hyperlink1
When  User can do udland page scroll down and up1
And   User can click on an artikle in udland page1
When  User can navigate to Penge hyperlink1
And   User can click on an artikle in Penge page1
When  User can do udland Penge page scroll down and up1
When  User can navigate to Politiks hyperlink1
And   User can click on an artikle in Politiks page1
When  User can do udland Politiks page scroll down and up1
When  User can navigate to Regionally hyperlink1
When  User can click on profile button1 
When  User can click on logout button1
Then  User can logout from the homepage1

Examples:

|drwebsite                        |
|https://preprod.dr.dk/ 				  |
