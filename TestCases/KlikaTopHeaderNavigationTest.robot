*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Keywords.robot

*** Variables ***
${browser}  chrome
${siteUrl}  https://klika.ba/

*** Test Cases ***
Open home page and navigate through top header links
    Open url in browser     ${siteUrl}      ${browser}
    Verify home page is opened
    Open About page
    Verify About page content
    Open Careers page
    Verify Careers page content
    Open Culture page
    Verify Culture page content
    Open Blog page
    Verify Blog page content
    Open News Room page
    Verify News Room page content
    Open Give Back page
    Verify Give Back page content
    Close my browser