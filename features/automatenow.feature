Feature: Testing the automatenow page

 	Scenario: Request for a demo session
 		Given User can open the automatenow homepage
 		When  User can click on First name textfield  
 		When  User can click on Last name textfield
 		When  User can click on Phone number numberbox
 		When  User can click on Company name textfield 
 		When  User can click on Business email textfield 
 		When  User can click on Your message textfield 
 		When  User can click on Mainframe automation checkbox
 		When  User can click on Privacy Policy 
 		And   User can click on Send message button 
 	  Then  Usen can registered a Request for a demo sesssion
 		