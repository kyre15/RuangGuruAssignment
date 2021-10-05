*** Variables ***
${data}=  response body data data 0

*** Keywords ***
Verify Response Body
    integer  ${data} basePrice
    Array  ${data} categories
    String  ${data} courseDescription
    String  ${data} courseName
    String  ${data} courseSerial
    String  ${data} createdAt
    String  ${data} imageUrl
    Array  ${data} instructors
    String  ${data} instructors 0 description
    String  ${data} instructors 0 jobTitle
    String  ${data} instructors 0 name
    String  ${data} instructors 0 profilePicture
    String  ${data} introductionVideoThumbnailURL
    String  ${data} introductionVideoURL
    Boolean  ${data} isSubscribed
    Array  ${data} location
    String  ${data} location 0
    String  ${data} marketType
    String  ${data} merchantSerial
    Integer  ${data} price
    Integer  ${data} rating
    String  ${data} slug
    Array  ${data} tags
    Integer  ${data} totalRating
    String  ${data} transactional
    String  ${data} updatedAt

Verify Response Status Success
    Integer  response status  200
    String  response body status  success
    String  response body message  success

Verify Response Status Internal Server Error
    Integer  response status  500