*** Settings ***
Library  REST  https://skillacademy.com/skillacademy/discovery/
Resource  Halper.robot

*** Test Cases ***
Verify Search Response
    Get  search
    Verify Response Body
    Verify Response Status Success

Verify Search Query Param Response
    Get  search?searchQuery=matematika
    Verify Response Body
    Verify Response Status Success

Verify Page Param Response
    Get  search?page=2
    Verify Response Body
    Verify Response Status Success

Verify Page Size Param Response
    Get  search?pageSize=1
    Verify Response Body
    Verify Response Status Success

Verify Minimum Price Param Response
    Get  search?minPrice=1
    Verify Response Body
    Verify Response Status Success

Verify Minimum Duration Param Response
    Get  search?minDuration=1
    Verify Response Body
    Verify Response Status Success

Verify Maximum Duration Param Response
    Get  search?maxDuration=1
    Verify Response Body
    Verify Response Status Success

Verify Order By Highest Rating Param Response
    Get  search?orderBy=highestRating
    Verify Response Body
    Verify Response Status Success

Verify Order By Lowest Rating Param Response
    Get  search?orderBy=lowestRating
    Verify Response Body
    Verify Response Status Success

Verify Order By Most Reviews Param Response
    Get  search?orderBy=mostReviews
    Verify Response Body
    Verify Response Status Success

Verify Order By Latest Param Response
    Get  search?orderBy=latest
    Verify Response Body
    Verify Response Status Success

Verify Order By Lowest Price Param Response
    Get  search?orderBy=lowestPrice
    Verify Response Body
    Verify Response Status Success

Verify Order By Highest Price Param Response
    Get  search?orderBy=highestPrice
    Verify Response Body
    Verify Response Status Success
