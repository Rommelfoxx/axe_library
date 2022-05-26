*** Settings ***

Library    SeleniumLibrary
Library    AxeLibrary

*** Variables ***


*** Keywords ***

Abrir navegador
    Open Browser    url:blank    chrome    

Fechar navegador
    Close Browser    

avaliar a acessibilidade da pagina
    &{results} =   Run Accessibility Tests   riachuelo.json 
    Log   Violations Count: ${results.violations}  
    Set Global Variable    &{RESULTS}    &{results}
      
    
    Log Readable Accessibility Result    violations

o resultado deverá nao apresentar problemas de acessibilidade
    Should Be True    ${RESULTS.violations} < 1
    