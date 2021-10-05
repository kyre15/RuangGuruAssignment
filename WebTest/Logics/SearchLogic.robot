*** Keywords ***

Verify Highest Filter Rating Work
    ${firstCourse}=  Get Rating Course  1
    ${secondCourse}=  Get Rating Course  3

    Should Be True  ${firstCourse} > ${secondCourse}