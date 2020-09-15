*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://www.104.com.tw/jobs/main/

*** Test Cases ***
google
    Open Browser   ${url}    ${browser} 
    Maximize Browser Window
    Wait Until Element Is Visible    css=#global_bk > ul > li.right > ul > li:nth-child(6) > a    20
    Click Element    css=#global_bk > ul > li.right > ul > li:nth-child(6) > a
    Wait Until Element Is Visible    id=username    10
    Input Text    id=username    F126721886
    Input Password    id=password    am931288
    Click Element    id=submitBtn

