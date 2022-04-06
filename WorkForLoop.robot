*** Settings ***
Library  SeleniumLibrary
Library  RequestsLibrary

*** Test Cases ***
Verify work links
    [Documentation]  This test case verifies the project links in work page

    Create Session  myssion  ${BASE_URL}

    @{items}  Create List  hmd-global  fruitbox  hako  ibu  laponie  nordic-pet-care-group  elenia  billebeino  bestpark  kotipizza  aker-artic  kaalimato  aquaction

    FOR  ${i}  IN  @{items}
        ${response}=  Get On Session  myssion  /${Page}/${i}/
        log to console  myssion/${Page}/${i}
        log to console  ${response.status_code}
        ${status_code}=  Convert To String  ${response.status_code}
        Should Be Equal  ${status_code}  200
    END

*** Variables ***
${BASE_URL}  https://v3.iona.dev/
${Page}  work