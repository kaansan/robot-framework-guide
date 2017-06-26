#/usr/bin/env python
*** Settings ***
Library           Selenium2Library
*** Variables ***
${BROWSER}        Firefox
${SITEURL}        http://www.youtube.com
${DELAY}          5s
*** Test Cases ***
GetGoogle
    Open Browser
    Search For Ed
    sleep         ${DELAY}
    [Teardown]      Close Browser

*** Keywords ***
Open Browser
        Selenium2Library.Open Browser    ${SITEURL}     ${BROWSER}
Search For Ed
        Input Text    masthead-search-term    ed sheeran
