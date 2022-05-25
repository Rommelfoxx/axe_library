*** Settings ***

Resource    ../Resources/resource.robot
Resource    ../Resources/home.robot

Suite Setup       Abrir navegador 
Suite Teardown    Fechar navegador 




*** Test Cases ***
Cenario 1 - Abrir e validar o site da Riachuelo

    #Dado
    que esteja na pagina home da riachuelo 
    #Quando
    avaliar a acessibilidade da pagina
    #Então
    o resultado deverá nao apresentar problemas de acessibilidade
