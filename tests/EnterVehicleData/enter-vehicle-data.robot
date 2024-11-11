***Settings***

Resource            ../../Resources/commom/BaseWeb.robot
Documentation        Automacao da Funcionalidade de Agendamento de Apresentação

*** Test Cases ***
Preencher e Validar Formulário de Dados do Veículo
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Preencher Campo Make  Audi
    Preencher Campo Model  Motorcycle
    Preencher Campo Cylinder Capacity  1500
    Preencher Campo Date Of Manufacture  2020-06-15
    Validar Campo Vazio  ${MAKE_FIELD}
    Validar Formato Data  ${DATE_FIELD}
    Clique no Botão "Next"
    Close Browser