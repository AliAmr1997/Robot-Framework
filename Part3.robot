*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${url}     https://demo.nopcommerce.com/
${browser}     chrome
${"email_txt"}        id:Email


*** Test Cases ***
Testinginputbox
    Open Browser    ${url}     ${browser}
   # Maximize Browser Window
    performtest
    #Close Browser
*** Keywords ***
performtest
        Maximize Browser Window
        Title Should Be    title=nopCommerce demo store
        Click Element      xpath: //a[normalize-space()='Log in']
        Element Should Be Visible    ${"email_txt"}
        Element Should Be Enabled    locator=${"email_txt"}
        Input Text       locator=${"email_txt"}     text=Johndavid@gmail.com
        Sleep    5
        Clear Element Text     locator=${"email_txt"}
        Sleep    3
        Close Browser