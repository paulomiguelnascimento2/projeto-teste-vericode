# projeto-teste-vericode

O objetivo deste projeto é a criação de testes automatizados na plataforma web da sample-app.

```plaintext
quality-assurance/
├── Page_objects
│   └── enter-vehicle-data.py
├── Resources
│   ├── common
│   │   ├── BaseWeb.robot
│   ├── feature
│   │   └── enter-vehicle-data
│   │       └── keywords-enter-vehicle-data.robot
├── tests
│   ├── enter-vehicle-data
│   │   └── enter-vehicle-data.robot
├── .gitignore
├── README.md
└── requirements.txt


## O que preciso fazer antes de rodar o primeiro teste?

Antes de rodar o teste devemos certificar que temos todas as ferramentas e suas versões instaladas e configuradas corretamente.

### Ferramentas

- [Python](https://docs.python.org/3/), como linguagem de programação;
- [Robot Framework](https://robotframework.org/), como estrutura genérica de automação de teste;
- [SeleniumLibrary](https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html), como lib de automação;

# Execução de testes

***Observação Windows:**
É necessário add o Git Bash no terminal do VSCode e utilizá-lo para o bom funcionamento desses comandos. 

**Entendendo o comando para execução**
```
    robot -d <pasta_report> <pasta_dos_testes>
```
- **Exemplo:** `pipenv run robot -d results tests`
    - onde -d é o alias do comando --outputdir, onde passamos em qual diretório vão ficar os resultados dos testes.
    - tests é o diretório onde estão as suites de test, é possivel passar uma pasta especifica. Ex:  `\tests\EnterVehicleData\enter-vehicle-data.robot`
```
**Entendendo o comando para execução com tag**
```
    robot -d <pasta_report> -i <nome_da_tag> <pasta_dos_testes>
```
- **Exemplo com tag:** `robot -d results -i <TAG_DO_TESTE> tests`
    - onde -d é o alias do comando --outputdir, onde passamos em qual diretório vão ficar os resultados dos testes.
    - onde -i é o alias do commando --include, onde passamos o nome da tag que queremos utilizar.
    - TAG_DO_TESTE. é onde passamos o nome da tag que queremos usar.
    - tests é o diretório onde estão as suites de test, é possivel passar uma pasta especifica. 
**Exemplo com tag:** `robot -d results -i <TAG_DO_TESTE> tests`

