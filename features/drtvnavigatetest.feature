Feature: Testing the DRTV page
Scenario: Testing the DRTV Navigate pages
When User can the DRradio website "<dr_homepage>"
When User can click on DRTV Hyperlink
When User can check the scroll down and scroll up page1
And User can navigate to LIVE Page 
When User can check the scroll down and scroll up page2 
And User can navigate to KATEGORIER Page
When User can check the scroll down and scroll up page3
When user can navigate to BARN Page
When User can check the scroll down and scroll up page4
When User can navigate to ULTRA Page
When User can check the scroll down and scroll up page5
When User can navigate to TV-GUIDE Page
When User can check the scroll down and scroll up page6
Then User is done sucessfull navigate regression test

Examples:

|dr_homepage        |
|https://www.dr.dk/ |
