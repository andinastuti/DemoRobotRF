*** Settings ***
Library							SeleniumLibrary
Test Setup						Open Browser		${base_url}			${browser_type}
Test Teardown					Close Browser

*** Variables ***
${base_url}						https://demoqa.com/radio-button
${browser_type}					Chrome

*** Test Cases ***
I Click radio button in impressive data
    Maximize Browser Window
    Click Element               //label[@for="impressiveRadio"]
    sleep                       3s
    Element Should Be Visible   //p[@class="mt-3"]
    sleep                       3s
    Element Should Contain      //span[@class="text-success"]           Impressive
    sleep                       3s

I Click radio button in yes data
        Maximize Browser Window
    Click Element               //label[@for="yesRadio"]
    sleep                       3s
    Element Should Be Visible   //p[@class="mt-3"]
    sleep                       3s
    Element Should Contain      //span[@class="text-success"]           Yes
    sleep                       3s