*** Settings ***
Resource    ../../object-repository/page-objects/web_app/DashboardPagePO.robot


*** Test Cases ***
Validate search successful
    Go to the google page
    Click the Account button
    Verify the Account page
