*** Settings ***
Resource    ../../locators/web_app/DashboardPageLocators.robot
Resource    ../../../constants/UrlConstants.robot

Library    SeleniumLibrary


*** Keywords ***
Go to the google page
    Create Webdriver    Chrome
    Go To    ${DASHBOARD_URL}

Click the Account button
    Click Element    ${accountButton}

Verify the Account page
    ${url}=    Get Location
    Should Be Equal    ${url}    ${ACCOUNT_URL}