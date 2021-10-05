*** Settings ***
Library  REST  https://skillacademy.com/skillacademy/discovery/
Resource  Halper.robot

*** Test Cases ***

Verify Maximum Price Param Response
    Get  search?maxPrice=3
    Verify Response Status Internal Server Error

Verify Sort By Param Response
    Get  search?sortBy=highestRating
    Verify Response Status Internal Server Error

Verify Sort By Highest Price Param Response
    Get  search?sortBy=highestRating
    Verify Response Status Internal Server Error