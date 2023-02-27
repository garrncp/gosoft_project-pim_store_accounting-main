*** Settings ***
Library        pabot.PabotLib
Library        OperatingSystem
Library        Collections
Library        String
Library        DebugLibrary
Library        DobbyCommonLibrary
Library        SeleniumLibrary
Resource       DobbyCommonLibrary/DobbyWebCommon.robot
Resource       DobbyCommonLibrary/DobbyCommon.robot

#Pages
Resource       ${CURDIR}/../../keywords/web/common/common_keywords.robot
Resource       ${CURDIR}/../../keywords/web/pages/login_page.robot
Resource       ${CURDIR}/../../keywords/web/pages/menu_page.robot
Resource       ${CURDIR}/../../keywords/web/pages/home_page.robot

#Features
Resource       ${CURDIR}/../../keywords/web/features/common_feature.robot
Resource       ${CURDIR}/../../keywords/web/features/home_feature.robot


Variables      ${CURDIR}/testdata/test_data.yaml
# Variables      ${CURDIR}/translation/th.yaml
Variables      ${CURDIR}/configs/env_local.yaml