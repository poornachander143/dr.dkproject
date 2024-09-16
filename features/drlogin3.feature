Feature: Testing on Danmarks Radio1

Scenario Outline: Testing DR Homepage1

Given User open DR URL1 "<url>"
When  User can click on login button1
When  User can enter the username value1 "<userName>"
When  User can click on the next button2
When  User can enter the password value1 "<password>"
#And   User can click on invisible or visible eye icon1
When  User can click on the login button1
Then  User able to login1

Examples:

|url                        		|userName                       |password  |
|https://www.dr.dk/  				|user1@yopmail.com            |Kanna@143143 |
#|https://www.dr.dk/  				|user2@yopmail.com            |Kanna@143143 |
#|https://www.dr.dk/  				|user3@yopmail.com            |Kanna@143143 |
#|https://www.dr.dk/  				|user4@yopmail.com            |Kanna@143143 |
#|https://www.dr.dk/  				|user5@yopmail.com            |Kanna@143143 |










