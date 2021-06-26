*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Keywords.robot

*** Variables ***
${browser}  chrome
${siteUrl}  https://klika.ba/

*** Test Cases ***
Open home page and scroll through content
    Open url in browser     ${siteUrl}      ${browser}
    Verify home page is opened
    Scroll through sections
    Close my browser