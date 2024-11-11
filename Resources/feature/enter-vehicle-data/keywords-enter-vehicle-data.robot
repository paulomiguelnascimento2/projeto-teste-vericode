*** Settings ***

Resource          ../../commom/BaseWeb.robot

*** Keywords ***
# keyword responsável por verificar se o campo fornecido está vazio, onde verifico o valor do campo
Validar Campo Vazio
    [Arguments]  ${campo}
    ${campo_value}=  Get Value  ${campo}
    Run Keyword If  '${campo_value}' == ''  Fail  O campo não pode ser vazio.

#keyword responsável por validar se o campo possui uma data no formato específico 20200615 e valida mensagem de erro exibida na aplicação
Validar Formato Data
    [Arguments]  ${campo}
    Wait Until Element Is Visible  ${campo}  timeout=5s
    ${campo_value}=  Get Value  ${campo}
    Log  Valor obtido no campo: ${campo_value}
    Capture Page Screenshot
    Run Keyword If  '${campo_value}' != '20200615'  Fail  Must be a valid date, valor obtido: '${campo_value}'
    Capture Page Screenshot


Preencher Campo ComboBox
    [Arguments]  ${campo}  ${valor}
    Wait Until Element Is Visible  ${campo}  timeout=10s
    Wait Until Element Is Enabled  ${campo}  timeout=10s
    Select From List by Value  ${campo}  ${valor}
    Capture Page Screenshot








#Preencher Campo Make
  #  [Arguments]  ${valor}
 #   Wait Until Element Is Visible  ${MAKE_FIELD}  timeout=10s
 #   Wait Until Element Is Enabled  ${MAKE_FIELD}  timeout=10s
  #  Select From List by Value   ${MAKE_FIELD}     ${valor}
  #  Capture Page Screenshot

#Preencher Campo Model
   # [Arguments]  ${valor}
   # Wait Until Element Is Visible  ${MAKE_FIELD}  timeout=10s
  #  Wait Until Element Is Enabled  ${MAKE_FIELD}  timeout=10s
   # Select From List by Value      ${MODEL_FIELD}  ${valor}
   # Capture Page Screenshot

Preencher Campo Cylinder Capacity
    [Arguments]  ${valor}
    Wait Until Element Is Visible  ${MAKE_FIELD}  timeout=10s
    Wait Until Element Is Enabled  ${MAKE_FIELD}  timeout=10s
    Input Text  ${CYLINDER_CAPACITY_FIELD}  ${valor}
    Capture Page Screenshot

Preencher Campo Date Of Manufacture
    [Arguments]  ${valor}
    Input Text  ${DATE_FIELD}  ${valor}
    Capture Page Screenshot

Clique no Botão "Next"
    Click Element  ${NEXT_BUTTON}
    Capture Page Screenshot