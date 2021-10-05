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
    HomePage.Input Search Bar  ${validTopic.cpns}
    HomePage.Click Search Icon
    SearchPage.Verify Drop Down Filter Sort
    SearchPage.Click Drop Down Filter Sort
    SearchPage.Choose Drop Down Filter Sort  Harga Tertinggi
    SearchPage.Verify Drop Down Filter Sort  Harga Tertinggi
    SearchLogic.Verify Lowest Filter Price Work

Verify Search Result Filtered By Harga <100.000
    HomePage.Verify SearchBar
    HomePage.Input Search Bar  ${validTopic.pemrograman}
    HomePage.Click Search Icon
    SearchPage.Verify Drop Down Filter Price
    SearchPage.Click Drop Down Filter Price
    SearchPage.Choose Drop Down Filter Price  <100.000
    SearchPage.Verify Drop Down Filter Price  <100.000
    SearchLogic.Verify Price Lower Then 100.000

Verify Search Result Filtered By Harga 100.000 - 149.999
    HomePage.Verify SearchBar
    HomePage.Input Search Bar  ${validTopic.pemrograman}
    HomePage.Click Search Icon
    SearchPage.Verify Drop Down Filter Price
    SearchPage.Click Drop Down Filter Price
    SearchPage.Choose Drop Down Filter Price  100.000 - 149.999
    SearchPage.Verify Drop Down Filter Price  100.000 - 149.999
    SearchLogic.Verify Price Between 100.000 Until 149.999

Verify Search Result Filtered By Harga 150.000 - 200.000
    HomePage.Verify SearchBar
    HomePage.Input Search Bar  ${validTopic.pemrograman}
    HomePage.Click Search Icon
    SearchPage.Verify Drop Down Filter Price
    SearchPage.Click Drop Down Filter Price
    SearchPage.Choose Drop Down Filter Price  150.000 - 200.000
    SearchPage.Verify Drop Down Filter Price  150.000 - 200.000
    SearchLogic.Verify Price Between 150.000 Until 200.000

Verify Search Result Filtered By Harga >200.000
    HomePage.Verify SearchBar
    HomePage.Input Search Bar  ${validTopic.pemrograman}
    HomePage.Click Search Icon
    SearchPage.Verify Drop Down Filter Price
    SearchPage.Click Drop Down Filter Price
    SearchPage.Choose Drop Down Filter Price  >200.000
    SearchPage.Verify Drop Down Filter Price  >200.000
    SearchLogic.Verify Price Higher Then 200.000