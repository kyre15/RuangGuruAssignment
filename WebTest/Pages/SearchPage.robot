*** Keywords ***
Verify Search Result
    [Arguments]  ${result}
    Wait Until Element Is Visible  //*[@data-testid="current-keyword"][text()="${result}"]  timeout=${FAST_TIMEOUT}

Verify No Result Page
    [Arguments]  ${inputedTopic}
    Wait Until Element Is Visible  //*[@data-testid="empty-card-title"]//*[text()="Maaf, kami tidak menemukan hasil untuk"]//following-sibling::*[contains(text(), "${inputedTopic}")]  timeout=${FAST_TIMEOUT}
