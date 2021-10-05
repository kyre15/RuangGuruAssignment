*** Settings ***
Resource  Resource.robot
Suite Setup  Open Skill Academy Website
Suite Teardown  Close All Browsers
Test Setup  Go To  ${skillAcademy}

*** Variables ***
&{validTopic}=  matematika=Matematika
...  cpns=cpns
...  pemrograman=pemrograman
${invalidTopic}=  asd

*** Test Cases ***

Verify Search Result Is Correct
    HomePage.Verify SearchBar
    HomePage.Input Search Bar  ${validTopic.matematika}
    HomePage.Click Search Icon
    SearchPage.Verify Search Result  ${validTopic.matematika}

Verify Invalid Search Result
    HomePage.Verify SearchBar
    HomePage.Input Search Bar  ${invalidTopic}
    HomePage.Click Search Icon
    SearchPage.Verify No Result Page  ${invalidTopic}

Verify Seach Result Filtered By Highest Rating
    HomePage.Verify SearchBar
    HomePage.Input Search Bar  ${validTopic.matematika}
    HomePage.Click Search Icon
    SearchPage.Verify Drop Down Filter Sort
    SearchPage.Click Drop Down Filter Sort
    SearchPage.Choose Drop Down Filter Sort  Rating Tertinggi
    SearchPage.Verify Drop Down Filter Sort  Rating Tertinggi
    SearchLogic.Verify Highest Filter Rating Work

Verify Search Result Filtered By Highest Price
    HomePage.Verify SearchBar
    HomePage.Input Search Bar  ${validTopic.cpns}
    HomePage.Click Search Icon
    SearchPage.Verify Drop Down Filter Sort
    SearchPage.Click Drop Down Filter Sort
    SearchPage.Choose Drop Down Filter Sort  Harga Tertinggi
    SearchPage.Verify Drop Down Filter Sort  Harga Tertinggi
    SearchLogic.Verify Highest Filter Price Work

Verify Search Result Filtered By Lowest Price
    HomePage.Verify SearchBar
    HomePage.Input Search Bar  cpns
    HomePage.Click Search Icon
    SearchPage.Verify Drop Down Filter Sort
    SearchPage.Click Drop Down Filter Sort
    SearchPage.Choose Drop Down Filter Sort  Harga Tertinggi
    SearchPage.Verify Drop Down Filter Sort  Harga Tertinggi
    SearchLogic.Verify Lowest Filter Price Work