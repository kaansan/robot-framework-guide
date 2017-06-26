### Robot Framework User Guide

A Robot framework guide for newbies.__
This guide purpose is for lazy programmers who
don't want to read docs or anything about robot.__
It is simple and easy to understand.

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

The thing is on robot framework : __
Making testing much simpler and easy and on other hand __
robot framework has cool test reports.
When you run tests , robot creates reports.

### How can I use and run robot and tests

* Create a file.robot , you should use .robot extension
* Write your test cases on that file
* and run with
        $ robot file-name.robot

        
