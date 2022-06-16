*** Settings ***
Library							SeleniumLibrary
Test Setup						Open Browser		${base_url}			${browser_type}
Test Teardown					Close Browser

*** Variables ***
${base_url}						http://uitestingplayground.com/textinput
${browser_type}					Chrome

*** Test Cases ***
I am typing My Name in the field
	Maximize Browser Window
	Input Text					//input[@class="form-control"]			Andina Puji A
	sleep						3s
	Click Element				//button[@class="btn btn-primary"]
	sleep						3s
	Element Should Contain		//button[@class="btn btn-primary"]		Supri