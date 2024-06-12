*** Settings ***
Resource    CommonPo.robot
Resource    ../../locators/mobile_app/NavigationBarLocators.robot


*** Keywords ***
Navigate To Login Screen
    Click Element [Arguments] ${loginIcon} ${SMALL_RETRY_COUNT}
