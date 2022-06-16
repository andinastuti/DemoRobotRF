*** Settings ***
Library					SeleniumLibrary
Test Setup				Open Browser		${base_url}			${browser_type}
Test Teardown			Close Browser

*** Variables ***
${base_url}				https://ikateksi.or.id/dteksi/sign-in.html
${browser_type}			Chrome

*** Test Cases ***
I am typing My Name in the field
	Maximize Browser Window
	Input Text			//input[@id="email"]			fadliel@gmail.com
	sleep				1s
	Input Text			//input[@id="password"]			Aksi2021
	sleep				1s
	Click Element		//input[@id="submit"]
	sleep				5s
	Element Should Contain		//button[@class="btn btn-primary"]		Aksi2021