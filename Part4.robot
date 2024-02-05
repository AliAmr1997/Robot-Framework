*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}                https://www.techlistic.com/p/selenium-practice-form.html
${browser}            chrome
${"email_txt"}        id:Email


*** Test Cases ***
Testinginputbox
    Open Browser    ${url}     ${browser}
   # Maximize Browser Window
    performtest
    #Close Browser
*** Keywords ***
performtest
        Sleep    2  # Allow some time for the page to load
    # Scroll down by 500 pixels
        Scroll Page    0    500
        #Maximize Browser Window
        Select Radio Button         group_name=sex     value=Female
        Select Radio Button         group_name=Years of Experience    value=6

        Select Checkbox    Manual Tester
        Select Checkbox    Automation Tester
        Select Checkbox    Protractor

        Unselect Checkbox    Manual Tester
  


#        Close Browser