*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem
Library  DebugLibrary
Library  String

Resource  Pages/_IMPORT_PAGES.robot
Resource  Logics/_IMPORT_LOGICS.robot

*** Variables ***
${skillAcademy}=  https://skillacademy.com/
${BROWSER}=  Chrome

${FAST_TIMEOUT}=  3

*** Keywords ***
Open Skill Academy Website
    Open Browser  ${skillAcademy}  ${BROWSER}