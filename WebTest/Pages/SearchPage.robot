*** Keywords ***
Verify Search Result
    [Arguments]  ${result}
    Wait Until Element Is Visible  //*[@data-testid="current-keyword"][text()="${result}"]  timeout=${FAST_TIMEOUT}

Verify No Result Page
    [Arguments]  ${inputedTopic}
    Wait Until Element Is Visible  //*[@data-testid="empty-card-title"]//*[text()="Maaf, kami tidak menemukan hasil untuk"]//following-sibling::*[contains(text(), "${inputedTopic}")]  timeout=${FAST_TIMEOUT}
    
Verify Drop Down Filter
    [Arguments]  ${filter}=Pilih
    Wait Until Element Is Visible  //*[@data-testid="dropdown-container"]//*[text()="${filter}"]  timeout=${FAST_TIMEOUT}

Click Drop Down Filter
    [Arguments]  ${filter}=Pilih
    Click Element  //*[@data-testid="dropdown-container"]//*[text()="${filter}"]

Choose Drop Down Filter
    [Arguments]  ${filter}
    Click Element  //*[@data-testid="dropdown-container"]//*[text()="${filter}"]

Get Rating Course
    [Arguments]  ${index}
    ${rating}=  Get Text  //div[${index}]//div[@data-testid="course-card"]//*[@data-testid="rating-text"]
    [Return]  ${rating}
