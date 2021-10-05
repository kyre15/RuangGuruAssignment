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

Verify Price Lower Then 100.000
    ${firstCoursePrice}=  Get Price Offline Course  1

    ${firstCoursePriceFormated}=  Remove String  ${firstCoursePrice}  Rp  .

    Should Be True  ${firstCoursePriceFormated} < 100000

Verify Price Between 100.000 Until 149.999
    ${firstCoursePrice}=  Get Price Course  1

    ${firstCoursePriceFormated}=  Remove String  ${firstCoursePrice}  Rp  .

    Should Be True  ${firstCoursePriceFormated} > 100000
    Should Be True  ${firstCoursePriceFormated} < 149999

Verify Price Between 150.000 Until 200.000
    ${firstCoursePrice}=  Get Price Offline Course  1

    ${firstCoursePriceFormated}=  Remove String  ${firstCoursePrice}  Rp  .

    Should Be True  ${firstCoursePriceFormated} > 150000
    Should Be True  ${firstCoursePriceFormated} <= 200000

Verify Price Higher Then 200.000
    ${firstCoursePrice}=  Get Price Course  1

    ${firstCoursePriceFormated}=  Remove String  ${firstCoursePrice}  Rp  .

    Should Be True  ${firstCoursePriceFormated} >= 200000
    