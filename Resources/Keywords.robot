*** Settings ***
Library  SeleniumLibrary
Library  Collections
Variables  ../PageObjects/Locators.py

*** Keywords ***
Open url in browser
    [Arguments]  ${siteUrl}     ${browser}
    open browser  ${siteUrl}    ${browser}
    Maximize Browser Window
    sleep   1
    Click Element   ${acceptCookieBtn}

Verify home page is opened
    Wait Until Element is Visible   ${homeLogoBtn}
    Title Should Be    Klika

Navigate Through What We Do pages
    Open All Services page
    Open Agile Product & Design page
    Open Engineering page
    Open Digital Transformation page
    Open Advanced Technologies & Innovation page
    Open Penetration Testing page

Open All Services page
    @{options}=     Get WebElements  ${navbarOptions}
    ${whatWeDo}=       Get From List   ${options}  1
    Click Element   ${whatWeDo}
    sleep   0.5
    @{whatWeDoOptions}=     Get WebElements     ${whatWeDoDropdownOptions}
    ${allServices}=     Get From List   ${whatWeDoOptions}  0
    Click Element   ${allServices}
    sleep   1
    @{servicesHeaders}=    Get WebElements     ${allServicesHeaders}
    ${x}=   Set Variable    1
    ${n}=   Set Variable    300
    FOR   ${i}    IN  @{servicesHeaders}
        sleep    0.5
        ${y}=   Evaluate    ${x}*${n}
        Execute JavaScript   document.querySelector('body').scrollTop = ${y}
        ${x}=   Evaluate    ${x}+1
    END
    Execute JavaScript  document.querySelector('body').scrollTop = document.body.scrollHeight
    sleep   1

Open Agile Product & Design page
    @{options}=     Get WebElements  ${navbarOptions}
    ${whatWeDo}=       Get From List   ${options}  1
    Click Element   ${whatWeDo}
    sleep   0.5
    @{whatWeDoOptions}=     Get WebElements     ${whatWeDoDropdownOptions}
    ${agileProductDesign}=     Get From List   ${whatWeDoOptions}  1
    Click Element   ${agileProductDesign}
    sleep   1
    @{agileDesignHeaders}=    Get WebElements     ${agileProductDesignHeaders}
    ${x}=   Set Variable    1
    ${n}=   Set Variable    600
    FOR   ${i}    IN  @{agileDesignHeaders}
        sleep    0.5
        ${y}=   Evaluate    ${x}*${n}
        Execute JavaScript   document.querySelector('body').scrollTop = ${y}
        ${x}=   Evaluate    ${x}+1
    END
    Execute JavaScript  document.querySelector('body').scrollTop = document.body.scrollHeight
    sleep   1

Open Engineering page
    @{options}=     Get WebElements  ${navbarOptions}
    ${whatWeDo}=       Get From List   ${options}  1
    Click Element   ${whatWeDo}
    sleep   0.5
    @{whatWeDoOptions}=     Get WebElements     ${whatWeDoDropdownOptions}
    ${engineering}=     Get From List   ${whatWeDoOptions}  2
    Click Element   ${engineering}
    sleep   1
    @{engHeaders}=    Get WebElements     ${engineeringHeaders}
    ${x}=   Set Variable    1
    ${n}=   Set Variable    600
    FOR   ${i}    IN  @{engHeaders}
        sleep    0.5
        ${y}=   Evaluate    ${x}*${n}
        Execute JavaScript   document.querySelector('body').scrollTop = ${y}
        ${x}=   Evaluate    ${x}+1
    END
    Execute JavaScript  document.querySelector('body').scrollTop = document.body.scrollHeight
    sleep   1

Open Digital Transformation page
    @{options}=     Get WebElements  ${navbarOptions}
    ${whatWeDo}=       Get From List   ${options}  1
    Click Element   ${whatWeDo}
    sleep   0.5
    @{whatWeDoOptions}=     Get WebElements     ${whatWeDoDropdownOptions}
    ${digitalTransformation}=     Get From List   ${whatWeDoOptions}  3
    Click Element   ${digitalTransformation}
    sleep   1
    @{digTransHeaders}=    Get WebElements     ${digitalTransformationHeaders}
    ${x}=   Set Variable    1
    ${n}=   Set Variable    600
    FOR   ${i}    IN  @{digTransHeaders}
        sleep    0.5
        ${y}=   Evaluate    ${x}*${n}
        Execute JavaScript   document.querySelector('body').scrollTop = ${y}
        ${x}=   Evaluate    ${x}+1
    END
    Execute JavaScript  document.querySelector('body').scrollTop = document.body.scrollHeight
    sleep   1

Open Advanced Technologies & Innovation page
    @{options}=     Get WebElements  ${navbarOptions}
    ${whatWeDo}=       Get From List   ${options}  1
    Click Element   ${whatWeDo}
    sleep   0.5
    @{whatWeDoOptions}=     Get WebElements     ${whatWeDoDropdownOptions}
    ${advancedTech}=     Get From List   ${whatWeDoOptions}  4
    Click Element   ${advancedTech}
    sleep   1
    @{advancedTechHeaders}=    Get WebElements     ${advancedTechnologiesInnovationHeaders}
    ${x}=   Set Variable    1
    ${n}=   Set Variable    600
    FOR   ${i}    IN  @{advancedTechHeaders}
        sleep    0.5
        ${y}=   Evaluate    ${x}*${n}
        Execute JavaScript   document.querySelector('body').scrollTop = ${y}
        ${x}=   Evaluate    ${x}+1
    END
    Execute JavaScript  document.querySelector('body').scrollTop = document.body.scrollHeight
    sleep   1

Open Penetration Testing page
    @{options}=     Get WebElements  ${navbarOptions}
    ${whatWeDo}=       Get From List   ${options}  1
    Click Element   ${whatWeDo}
    sleep   0.5
    @{whatWeDoOptions}=     Get WebElements     ${whatWeDoDropdownOptions}
    ${penTest}=     Get From List   ${whatWeDoOptions}  5
    Click Element   ${penTest}
    sleep   1
    @{penTestHeaders}=    Get WebElements     ${penetrationTestingHeaders}
    ${x}=   Set Variable    1
    ${n}=   Set Variable    600
    FOR   ${i}    IN  @{penTestHeaders}
        sleep    0.5
        ${y}=   Evaluate    ${x}*${n}
        Execute JavaScript   document.querySelector('body').scrollTop = ${y}
        ${x}=   Evaluate    ${x}+1
    END
    Execute JavaScript  document.querySelector('body').scrollTop = document.body.scrollHeight
    sleep   1

Open About page
    @{options}=     Get WebElements  ${navbarOptions}
    ${about}=       Get From List   ${options}  0
    sleep   1
    Click Element   ${about}
    sleep   1

Open Careers page
    @{options}=     Get WebElements  ${navbarOptions}
    ${careers}=       Get From List   ${options}  2
    sleep   1
    Click Element   ${careers}
    sleep   1

Open Culture page
    @{options}=     Get WebElements  ${navbarOptions}
    ${culture}=       Get From List   ${options}  3
    sleep   1
    Click Element   ${culture}
    sleep   1

Open Blog page
    @{options}=     Get WebElements  ${navbarOptions}
    ${blog}=       Get From List   ${options}  4
    sleep   1
    Click Element   ${blog}
    sleep   1

Open News Room page
    @{options}=     Get WebElements  ${navbarOptions}
    ${newsroom}=       Get From List   ${options}  5
    sleep   1
    Click Element   ${newsroom}
    sleep   1

Open Give Back page
    @{options}=     Get WebElements  ${navbarOptions}
    ${giveback}=       Get From List   ${options}  6
    sleep   1
    Click Element   ${giveback}
    sleep   1

Verify About page content
    @{headers}=     Get WebElements     ${mainHeaders}
    FOR   ${i}    IN  @{headers}
       ${text}=     Get Text    ${i}
       Log to console   ${text}
    END
    @{paragraphs}=  Get WebElements     ${paragraphElements}
    ${x}=   Set Variable    1
    ${n}=   Set Variable    300
    FOR   ${j}  IN  @{paragraphs}
        sleep    0.5
        ${text}=    Get Text     ${j}
        Log to console  ${text}
        ${y}=   Evaluate    ${x}*${n}
        Execute JavaScript   document.querySelector('body').scrollTop = ${y}
        ${x}=   Evaluate    ${x}+1
    END
    sleep   1

Verify Careers page content
    @{positionsText}=    Get WebElements     ${openPositionsText}
    ${x}=   Set Variable    1
    ${n}=   Set Variable    200
    FOR   ${i}    IN  @{positionsText}
        sleep    0.5
        ${y}=   Evaluate    ${x}*${n}
        Execute JavaScript   document.querySelector('body').scrollTop = ${y}
        ${text}=     Get Text   ${i}
        Log to console   ${text}
        ${x}=   Evaluate    ${x}+1
    END
    Execute JavaScript  document.querySelector('body').scrollTop = document.body.scrollHeight
    sleep   1

Verify Culture page content
    Wait Until Element is Visible   ${klikaVideo}
    sleep   2

Verify Blog page content
    Wait Until Element is Visible   ${blogHeader}
    sleep   1
    @{blogs}=    Get WebElements     ${blogsList}
    ${x}=   Set Variable    1
    ${n}=   Set Variable    200
    FOR   ${i}    IN  @{blogs}
        sleep    0.5
        ${y}=   Evaluate    ${x}*${n}
        Execute JavaScript   document.querySelector('body').scrollTop = ${y}
        ${x}=   Evaluate    ${x}+1
    END
    Execute JavaScript  document.querySelector('body').scrollTop = document.body.scrollHeight
    sleep   1

Verify News Room page content
    Wait Until Element is Visible   ${latestNews}
    sleep   1
    @{news}=    Get WebElements     ${newsList}
    ${x}=   Set Variable    1
    ${n}=   Set Variable    200
    FOR   ${i}    IN  @{news}
        sleep    0.5
        ${y}=   Evaluate    ${x}*${n}
        Execute JavaScript   document.querySelector('body').scrollTop = ${y}
        ${x}=   Evaluate    ${x}+1
    END
    Execute JavaScript  document.querySelector('body').scrollTop = document.body.scrollHeight
    sleep   1

Verify Give Back page content
    Wait Until Element is Visible   ${giveBackHeader}
    sleep   1
    @{giveBacks}=    Get WebElements     ${giveBackList}
    ${x}=   Set Variable    1
    ${n}=   Set Variable    200
    FOR   ${i}    IN  @{giveBacks}
        sleep    0.5
        ${y}=   Evaluate    ${x}*${n}
        Execute JavaScript   document.querySelector('body').scrollTop = ${y}
        ${x}=   Evaluate    ${x}+1
    END
    Execute JavaScript  document.querySelector('body').scrollTop = document.body.scrollHeight
    sleep   1

Scroll through sections
    @{sections}=    Get WebElements     ${rightNavMenuOptions}
    FOR   ${i}    IN  @{sections}
       Click Element   ${i}
       sleep   2
    END

Scroll to element
    [Arguments]  ${locator}
    ${x}=   Get Horizontal Position     ${locator}
    ${y}=   Get Vertical Position   ${locator}
    Execute JavaScript  document.querySelector('body').scrollTop = ${y}

Close my browser
    Close Browser