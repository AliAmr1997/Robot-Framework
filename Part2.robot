*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}     https://demo.nopcommerce.com/
${browser}     chrome
*** Test Cases ***
Testcase1
    Open Browser    ${url}     ${browser}
   # Maximize Browser Window
    logintoApplication
    #Close Browser
*** Keywords ***
logintoApplication
        Click Link      xpath: //a[normalize-space()='Log in']
        Input Text      xpath: //input[@id='Email']    text="Test@123"
        Input Text      xpath: //input[@id='Password']     Passwordd
        Click Element   xpath: //button[normalize-space()='Log in']