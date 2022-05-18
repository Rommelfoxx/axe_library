*** Settings ***

Library    SeleniumLibrary
Library    AxeLibrary

*** Keywords ***

Abrir navegador
    Open Browser    url:blank    chrome    

Fechar navegador
    Close Browser    

avaliar a acessibilidade da pagina
    &{results} =   Run Accessibility Tests   riachuelo.json 
    Log   Violations Count: ${results.violations}    
    
    Log Readable Accessibility Result    violations

