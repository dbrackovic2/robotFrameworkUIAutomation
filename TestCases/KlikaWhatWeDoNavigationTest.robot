*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Keywords.robot

*** Variables ***
${browser}  chrome
${siteUrl}  https://klika.ba/

*** Test Cases ***
Open home page and navigate through What We Do links
    Open url in browser     ${siteUrl}      ${browser}
    Verify home page is opened
    Navigate Through What We Do pages
    Close my browser