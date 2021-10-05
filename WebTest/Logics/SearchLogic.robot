*** Keywords ***

Verify Highest Filter Rating Work
    ${firstCourse}=  Get Rating Course  1
    ${secondCourse}=  Get Rating Course  3

    Should Be True  ${firstCourse} > ${secondCourse}

Verify Highest Filter Price Work
    ${firstCoursePrice}=  Get Price Course  1
    ${secondCoursePrice}=  Get Price Course  3

    ${firstCoursePriceFormated}=  Remove String  ${firstCoursePrice}  Rp  .
    ${secondCoursePriceFormated}=  Remove String  ${secondCoursePrice}  Rp  .

    Should Be True  ${firstCoursePriceFormated} > ${secondCoursePriceFormated}

Verify Lowest Filter Price Work
    ${firstCoursePrice}=  Get Price Course  1
    ${numberOfLastCourse}=  Get Price Course Element Count
    ${secondCoursePrice}=  Get Price Course  ${numberOfLastCourse}

    ${firstCoursePriceFormated}=  Remove String  ${firstCoursePrice}  Rp  .
    ${secondCoursePriceFormated}=  Remove String  ${secondCoursePrice}  Rp  .

    Should Be True  ${firstCoursePriceFormated} > ${secondCoursePriceFormated}
    