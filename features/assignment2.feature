Feature: Testing on Danmarks Radio1

Scenario Outline: Testing globalsqa Homepage1

Given User open globalsqa URL1 "<url>"
When  User can enter the name in text box value1 "<name>"
When  User can enter the Email value1 "<email>"
When  User can enter the website value1 "<website>"
When  User can choose the Experience in years
And   User can choose expertise from the check box
When  User can choose education from the check box
When  User can click on Alerbox button
When  User can write some comments in the text box value1 "<comment>"
When  User can click on the the submit button
Then  User can complete the registration form.
When  User can took screenshot
#When  User can navigate to About button
#And   User can also navigate to chatsheets
#And   User can also navigate to Free ebooks

Examples:

|url                                        |name             |email											  |website										|comment	 |
|https://www.globalsqa.com/samplepagetest/  |poornachander    |poornachander.v@gmail.com 		|https://www.google.com/		|I like to learn testing |






