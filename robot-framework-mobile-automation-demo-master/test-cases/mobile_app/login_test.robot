*** Settings ***
Resource         ../../object-repository/page-objects/mobile_app/NavigationBarPo.robot
Resource         ../../object-repository/page-objects/mobile_app/LoginScreenPo.robot
Resource         ../../constants/LoginConstants.robot
Resource         ../../constants/AlertConstants.robot

Test Setup       Open Test Application
Test Teardown    Close Application


*** Test Cases ***
Verify That A User Can Login To The Application Using Valid Credentials
    [Tags]    Smoke

    Navigate To Login Screen
    Login To The Application [Arguments] ${EMAIL_ADDRESS} ${PASSWORD}
    Alert Title Should Be [Arguments] ${LOGIN_SUCCESS_ALERT_TITLE}
    Alert Message Should Be [Arguments] ${LOGIN_SUCCESS_ALERT_MESSAGE}
