#/usr/bin/env python
*** Settings ***
Library           Selenium2Library

*** Variables ***
${BROWSER}        Firefox
${SITEURL}        http://www.youtube.com
${DELAY}          5s

*** Test Cases ***
FindShapeOfYou
    Open Browser
    Search For Ed
    Click For Shape Of You
    sleep         ${DELAY}
    [Teardown]      Close Browser

*** Keywords ***
Open Browser
        Selenium2Library.Open Browser    ${SITEURL}     ${BROWSER}
Search For Ed
        Input Text    masthead-search-term    ed sheeran
Click For Shape Of You
        Click Link    Ed Sheeran - Shape of You [Official Video]
