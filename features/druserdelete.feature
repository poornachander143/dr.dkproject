Feature: Testing on Danmarks Radio2

Scenario Outline: Testing DR Homepage delete account

Given User open DR URL2 "<url2>"
When  User can click on login button3
When  User can enter the usernames value "<userNames>"
When  User can click on the next button3
When  User can enter the passwords value "<passwords>"
#And   User can click on invisible or visible eye icon1
When  User can click on the login button2
When  User can click on user profile
And   User can click on settings
When  User can click on delete login
Then  User able to delete username

Examples:

|url2                       |userNames                    |passwords  |
|https://www.dr.dk/  				|user51@yopmail.com            |Kanna@143143 |
|https://www.dr.dk/  				|user52@yopmail.com            |Kanna@143143 |
|https://www.dr.dk/  				|user53@yopmail.com            |Kanna@143143 |
|https://www.dr.dk/  				|user54@yopmail.com            |Kanna@143143 |
|https://www.dr.dk/  				|user55@yopmail.com            |Kanna@143143 |
|https://www.dr.dk/  				|user56@yopmail.com            |Kanna@143143 |
|https://www.dr.dk/  				|user57@yopmail.com            |Kanna@143143 |

