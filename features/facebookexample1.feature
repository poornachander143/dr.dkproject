Feature: Testing the facebook page

	Scenario: Testing the login in facebook page
	 Given when user can open facebook url "<facebook_url>"
	 When User can enter the username in textbox "<facebook_username>"
	 And  User can enter the password in textbox "<facebook_password>"
	 # And  User can click on visible and invisible eye visible to see and hide the password
	 And User can click on the facebook login button
	 Then User can login sucessfully 
	 
	 
Examples:

|facebook_url										|facebook_username								|facebook_password	|
	 
|https://www.facebook.com/			|poornachander.v@gmail.com				|kanna143143				| 
	 
	 
	 
	 
	 
	 
	 
	  