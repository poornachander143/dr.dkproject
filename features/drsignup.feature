Feature: Testing on Danmarks radio regression testing

Scenario Outline: Testing DR website

Given User open DR website "<website>"
When  User can click on logind button
When  User can enter the username1 "<userName1>"
When  User can tap on the next button
When  User can enter the password  "<password1>"
And   User can click on invisible or visible eye icon hyperlink
When  User can click on next button1
When  User can enter the name in the text box "<name>"
When  User can click on the next logind button1
When  User can click on read more button
When  User can click on JATak button1
When  User can click on JATak button2
When  User can click on JATak button3
When  User can click on Yopmail website "<website1>"
When  User can enter yopmail id in username text box "<yopmailusername>"
When  User can click on next yopmail button
When  User can enter into inbox messages and User can click on the confirmation email 
Then  User can able to create account successfully



Examples:

|website                    |userName1               		  |password1      |name			|website1		          				|yopmailusername		 |
|https://www.dr.dk/ 				|user59@yopmail.com            |Kanna@143143  	|A				|https://yopmail.com/					|user59@yopmail.com	 | 
 








