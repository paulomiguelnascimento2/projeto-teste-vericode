*** Settings ***

Resource          ../../commom/BaseWeb.robot

*** Keywords ***
# keyword responsável por verificar se o campo fornecido está vazio, e verifico o valor do campo
Validar Campo Vazio
    [Arguments]  ${campo}
    ${campo_value}=  Get Value  ${campo}
    Run Keyword If  '${campo_value}' == ''  Fail  O campo não pode ser vazio.

# keyword responsável por validar se o campo possui uma data no formato específico 20200615 e valida mensagem de erro exibida na aplicação
Validar Formato Data
    [Arguments]  ${campo}
    Wait Until Element Is Visible  ${campo}  timeout=2s
    ${campo_value}=  Get Value  ${campo}
    Log  Valor obtido no campo: ${campo_value}
    Capture Page Screenshot
    Run Keyword If  '${campo_value}' != '20200615'  Fail  Must be a valid date, valor obtido: '${campo_value}'
    Capture Page Screenshot

# keyword responsável por efetuar o preenchimento de campos combo-box
Preencher Campo ComboBox
    [Arguments]  ${campo}  ${valor}
    Wait Until Element Is Visible  ${campo}  timeout=2s
    Wait Until Element Is Enabled  ${campo}  timeout=2s
    Select From List by Value  ${campo}  ${valor}
    Capture Page Screenshot

# keyword responsável por efetuar o preenchimento de campos por tipo texto
Preencher Campo Texto
    [Arguments]  ${campo}  ${valor}
    Wait Until Element Is Visible  ${campo}  timeout=2s
    Wait Until Element Is Enabled  ${campo}  timeout=2s
    Input Text  ${campo}  ${valor}
    Capture Page Screenshot

# keyword responsável por efetuar o clique do botão next
Clique no Botão "Next"
    Click Element  ${NEXT_BUTTON}
    Capture Page Screenshot