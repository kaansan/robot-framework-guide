### Robot Framework User Guide
<img src="robot.png" width="200">
A Robot framework guide for newbies.    
This guide purpose is for lazy programmers who
don't want to read boring robot documentation or anything about robot.    
This guide is simple and easy to understand.


### Requirements

* Python 2.7
* Robot framework
* Selenium2Library


### Installation

Create a virtualenv with python2

    $ mkvirtualenv --python=$(which python2) [your-virtual-env-name]

Clone the repository

    $ git clone git@github.com:kaaanshady/robot-framework-guide.git

Change directory and set virtualenv to your folder

    $ cd ../robot-framework-guide-master
    $ setvirtualenvproject

Install Requirements

    $ pip install -r requirements.txt


### Running Tests

Running tests

    $ robot TEST-CASE-NAME.robot


### Guide 101

The thing is on robot framework :  

* Making testing much simpler and easy.  
* Robot framework has cool test reports.  
* When you run tests , robot creates reports.


### How can I use and run robot and tests

* Create a file.robot , you should use .robot extension
* Write your test cases on that file
* and run with

        $ robot file-name.robot


### Concepts of Robot Framework

* Settings
* Variables
* Test cases
* Keywords


### *** Settings ***

Where you can import libraries like Selenium2Library

Example :

      *** Settings ***
      Library       Selenium2Library

Notice that between 'Library' and 'Selenium2Library'  
have 4 spaces.


### *** Variables ***

Where you can , define variables for Test Cases and Keywords  
You can define variables like ...  
Example :

      *** Variables ***
      ${BROWSER}       Firefox
      ${SITEURL}       http://www.google.com


### *** Test Cases ***

This section for writing test cases  

Example :

        *** Test Cases ***

        FindShapeOfYou  
                Open Browser  
                Search For Ed  
                Click For Shape Of You  
                sleep       ${DELAY}  
                Close Browser


Note :

In that test case , FindShapeOfYou is TEST-CASE-NAME  
and the below , instructions(keywords) of what to do with that test case.


### *** Keywords ***

I think most important section is keywords.  
You can define keywords and that keywords can do anything you want.  
You can give their parameter some arguments and use them.

Example :

        *** Keywords ***

        Open Browser  
                Open Browser   ${SITEURL}    ${BROWSER}  

        Search For Ed  
                Input Text    [id-or-some-locator-of-element]   ed sheeran  

        Click For Shape Of You  
                Click Link     Ed Sheeran - Shape of You [Official Video]  


Notice that , you shouldn't forget using 4 spaces when defining anything  
and when you want to give arguments to parameters of Keywords  
you should give 2 spaces.
