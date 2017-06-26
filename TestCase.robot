#/usr/bin/env python
*** Settings ***
Library           Selenium2Library

*** Variables ***
${BROWSER}        Firefox
${YOUTUBE_URL}    http://www.youtube.com
${GOOGLE_URL}     http://www.google.com
${DELAY}          3s

*** Test Cases ***
FindShapeOfYou
        Open Youtube
        Search For Ed Sheeran
        Click For Shape Of You
        sleep         ${DELAY}
        Close Browser

SearchTupac
        Open Google
        Search For Tupac
        sleep         ${DELAY}
        Close Browser

*** Keywords ***
Open Youtube
        Open Browser    ${YOUTUBE_URL}     ${BROWSER}
Search For Ed Sheeran
        Input Text    masthead-search-term    ed sheeran
Click For Shape Of You
        Click Link    Ed Sheeran - Shape of You [Official Video]

Open Google
        Open Browser    ${GOOGLE_URL}   ${BROWSER}
Search For Tupac
        Input Text    lst-ib    Tupac Amaru Shakur
