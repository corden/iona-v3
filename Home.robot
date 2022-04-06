*** Settings ***
Library  SeleniumLibrary
Resource  ../../../Resources/CommonFunctionalities.robot
Resource  ../../../Resources/IONA_UserDefinedKeywords.robot

*** Variables ***

*** Test Cases ***
Verify home page
    [Documentation]  This test case verifies the home page
    [tags]  Functional

    Open Browser  https://v3.iona.dev/  chrome
    Maximize Browser Window

    Click Element  xpath://*[@id="rcc-confirm-button"]

    Page Should Contain Image  xpath://*[@id="gatsby-focus-wrapper"]/div[3]/main/div/div[1]/div[1]/img

    Element Text Should Be  xpath://*[@id="gatsby-focus-wrapper"]/div[3]/main/div/div[1]/div[2]/h1  We are a digital consultancy that discovers new offerings, builds digital products and enables you to sell more online.

    Element Text Should Be  xpath://*[@id="gatsby-focus-wrapper"]/div[3]/main/div/div[2]/div[1]/h2  FEATURED CASES

    Scroll Element Into View  xpath://*[@id="gatsby-focus-wrapper"]/div[3]/main/div/div[3]/div/div[1]/h2
    Element Text Should Be  xpath://*[@id="gatsby-focus-wrapper"]/div[3]/main/div/div[3]/div/div[1]/h2  Services

    Scroll Element Into View  xpath://*[@id="gatsby-focus-wrapper"]/div[3]/main/div/div[4]/div[3]/a
    Element Text Should Be  xpath://*[@id="gatsby-focus-wrapper"]/div[3]/main/div/div[4]/div[1]/h2  SOME OF OUR CLIENTS

    Scroll Element Into View  xpath://*[@id="gatsby-focus-wrapper"]/div[3]/main/div/section/div/div/div[1]/div
    Element Text Should Be  xpath://*[@id="gatsby-focus-wrapper"]/div[3]/main/div/section/div/div/div[1]/h2  Let’s do great things together

    Scroll Element Into View  xpath://*[@id="gatsby-focus-wrapper"]/div[3]/main/div/div[6]/div/div[1]/div[2]/a
    Element Text Should Be  xpath://*[@id="gatsby-focus-wrapper"]/div[3]/main/div/div[6]/div/div[1]/div[1]/h2  We are global and partnered up

    Scroll Element Into View  xpath://*[@id="gatsby-focus-wrapper"]/div[3]/main/div/div[7]/div/div[2]/div[2]/a
    Element Text Should Be  xpath://*[@id="gatsby-focus-wrapper"]/div[3]/main/div/div[7]/div/div[1]/h2  INSIGHTS

    Close Browser