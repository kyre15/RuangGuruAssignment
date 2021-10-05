*** Keywords ***
Verify SearchBar
    Wait Until Element Is Visible  //input[@data-testid="search-input-field"]  timeout=${FAST_TIMEOUT}

Input Search Bar
    [Arguments]  ${topic}
    Input Text  //input[@data-testid="search-input-field"]  ${topic}

Click Search Icon
    Click Element  //*[@data-testid="search-icon"]