***Settings***

Resource            ../../Resources/commom/BaseWeb.robot
Documentation        Automação da aba Enter Vehicle Data  e Enter Insurant Data do portal sample app

*** Test Cases ***
Preencher e Validar Formulário de Dados do Veículo

    [Tags]    smokeVehicleDataCritical
    
    Open Browser                     ${URL}  ${BROWSER}
    Maximize Browser Window
    Preencher Campo ComboBox         ${MAKE_FIELD}                 Audi
    Preencher Campo ComboBox         ${MODEL_FIELD}                Motorcycle
    Preencher Campo Texto            ${CYLINDER_CAPACITY_FIELD}    1500
    Preencher Campo Texto            ${DATE_FIELD}                 2020-06-15
    Validar Campo Vazio              ${MAKE_FIELD}
    Validar Formato Data             ${DATE_FIELD}
    Clique no Botão  Next            ${NEXT_BUTTON}
    Preencher Campo Texto            ${FIRSTNAME}                  QAENGENIER
    Preencher Campo Texto            ${LASTNAME}                   QUALITYASSURANCE
    Preencher Campo Texto            ${BIRTHDATE}                  01/01/1988
    Preencher Campo Texto            ${STREETADDRESS}              RUA SEM NOME
    Preencher Campo ComboBox         ${OCCUPATION}                 Employee
    Clique no Botão  Next            ${NEXT_ENTER_PRODUCT_DATA}