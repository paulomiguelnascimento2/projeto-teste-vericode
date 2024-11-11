***Settings***

Resource            ../../Resources/commom/BaseWeb.robot
Documentation        Automação da aba Enter Vehicle Data do portal sample app

*** Test Cases ***
Preencher e Validar Formulário de Dados do Veículo
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Preencher Campo ComboBox  ${MAKE_FIELD}                 Audi
    Preencher Campo ComboBox  ${MODEL_FIELD}                Motorcycle
    Preencher Campo Texto     ${CYLINDER_CAPACITY_FIELD}    1500
    Preencher Campo Texto     ${CYLINDER_CAPACITY_FIELD}    2020-06-15
    Validar Campo Vazio       ${MAKE_FIELD}
    Validar Formato Data      ${DATE_FIELD}
    Clique no Botão "Next"
    Close Browser