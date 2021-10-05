*** Settings ***
Resource  Resource.robot
Suite Setup  Open Skill Academy Website
Suite Teardown  Close All Browsers
Test Setup  Go To  ${skillAcademy}

*** Variables ***
${validTopic}=  Matematika
${invalidTopic}=  asd

*** Test Cases ***

Verify Search Result Is Correct
    HomePage.Verify SearchBar
    HomePage.Input Search Bar  ${validTopic}
    HomePage.Click Search Icon
    SearchPage.Verify Search Result  ${validTopic}

Verify Invalid Search Result
    HomePage.Verify SearchBar
    HomePage.Input Search Bar  ${invalidTopic}
    HomePage.Click Search Icon
    SearchPage.Verify No Result Page  ${invalidTopic}