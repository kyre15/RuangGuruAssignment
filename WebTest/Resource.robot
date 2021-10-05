*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem

Resource  Pages/_IMPORT_PAGES.robot

*** Variables ***
${skillAcademy}=  https://skillacademy.com/
${BROWSER}=  Chrome

${FAST_TIMEOUT}=  3

*** Keywords ***
Open Skill Academy Website
    Open Browser  ${skillAcademy}  ${BROWSER}