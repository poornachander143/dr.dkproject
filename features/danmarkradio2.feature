Feature: Testing on Danmarks Radio1

Scenario: Testing DR Homepage1

Given User open DR URL "https://www.dr.dk/"
When  User can click on login button
When  User can enter the username value "poornachander.v@gmail.com"
When  User can click on the next button1
When  User can enter the password value "Kanna@143143"
And   User can click on invisible or visible eye icon
When  User can click on the login button
Then  User able to login

  




