# projeto_orange_hrm

### Automação Web OrangeHRM com Robot Framework
- Este projeto demonstra a automação de testes de interface de usuário (UI) para a aplicação web OrangeHRM, utilizando o Robot Framework e a SeleniumLibrary.
- Desenvolvido como parte de um portfólio de QA, o objetivo é validar as principais funcionalidades da aplicação através de testes automatizados, demonstrando proficiência em automação de testes web.

* **Acesse a aplicação web: [OrangeHRM](https://opensource-demo.orangehrmlive.com/web/index.php/auth/login)**

#### Objetivo do Projeto
- O principal objetivo deste projeto é automatizar os fluxos de trabalho críticos e as funcionalidades dos módulos do OrangeHRM, garantindo a qualidade e o comportamento esperado da aplicação. 
- Isso inclui validações de login, navegação, gerenciamento de dados e outras operações essenciais, com foco em cenários de sucesso e falha.

#### Funcionalidades Testadas
- Os testes automatizados cobrem as seguintes áreas e módulos da aplicação OrangeHRM, conforme a organização dos arquivos de teste:

* **Login:**
    * Login com credenciais válidas (```US-01-login-valido```).

    * Login com credenciais incorretas (```US-02-login-incorreto```).

    * Login com campos obrigatórios em branco (```US-03-login-campos-obrigatórios```).

* **Logout:**
    * Realizar o logout do sistema com sucesso e ser redirecionado para a página de login (```US-04-logout```).

* **Dashboard:**
    * Visualizar e interagir com elementos principais do Dashboard, incluindo menu lateral, botão de recolhimento, campo de pesquisa e cabeçalho (```US-05-dashboard```).

* **Gerenciamento de Usuários (Módulo Admin):**
    * Cadastrar um novo usuário com sucesso, confirmando o cadastro e realizando login com as novas credenciais (```US-06-cadastrar-usuario```).

    * Deletar um usuário existente do sistema com sucesso através da interface de administração (```US-07-deletar-usuario```).

#### Tecnologias e Ferramentas Utilizadas
* Robot Framework
* Python
* SeleniumLibrary
* Navegador Web: Chrome, Firefox ou Edge
* Webdriver: compatível com o seu navegador instalado e configurado para permitir a automação.

#### Pré-requisitos
* Para configurar e executar este projeto em sua máquina, você precisará ter instalado:

    * Python 3.6+: Baixe e instale a versão mais recente em python.org.

    * Um navegador web: Como Google Chrome, Mozilla Firefox ou Microsoft Edge.

    * O WebDriver correspondente ao seu navegador:
        * ChromeDriver: Para Google Chrome. Baixe em chromedriver.chromium.org.
        * GeckoDriver: Para Mozilla Firefox. Baixe em github.com/mozilla/geckodriver/releases.
        * MSEdgeDriver: Para Microsoft Edge. Baixe em developer.microsoft.com/en-us/microsoft-edge/tools/webdriver/.
* **Importante:** Certifique-se de que o WebDriver esteja no seu PATH do sistema ou na mesma pasta onde você executa os testes.


#### Instalação das Dependências
1. **Clone o repositório:**
```bash
    git clone https://github.com/veronica-bueno/projeto_orange_hrm
    cd projeto_orange_hrm 
```
2. **Crie um ambiente virtual (recomendado):**
```bash
    python -m venv venv
    source venv/bin/activate  # No Linux/macOS
    # venv\Scripts\activate   # No Windows
```
3. **Instale as dependências do** ```requirements.txt```:
```bash
    pip install -r requirements.txt
```

* (Este arquivo ```requirements.txt``` deve conter as bibliotecas listadas na seção "Tecnologias e Ferramentas Utilizadas", como ```robotframework```, ```robotframework-seleniumlibrary```, etc.)

#### Estrutura do Projeto

A estrutura de pastas do projeto está organizada da seguinte forma:
```
projeto_orange_hrm/
├── config/
│   └── config.resource   # Configurações globais (URL base, credenciais)
├── reports/              # Diretório para relatórios de execução dos testes
│   ├── log.html
│   ├── output.xml
│   ├── report.html
│   └── selenium-screenshot-*.png   # Evidências
├── resources/            # Keywords reutilizáveis para cada funcionalidade
│   ├── US-01-login-valido.resource
│   ├── US-02-login-incorreto.resource
│   ├── US-03-login-campos-obrigatórios.resource
│   ├── US-04-logout.resource
│   ├── US-05-dashboard.resource
│   ├── US-06-cadastrar-usuario.resource
│   └── US-07-deletar-usuario.resource
├── tests/                # Arquivos de teste (.robot) organizados por funcionalidade
│   ├── US-01-login-valido.robot
│   ├── US-02-login-incorreto.robot
│   ├── US-03-login-campos-obrigatórios.robot
│   ├── US-04-logout.robot
│   ├── US-05-dashboard.robot
│   ├── US-06-cadastrar-usuario.robot
│   └── US-07-deletar-usuario.robot
├── user_story/           # Pasta para documentação das User Stories (ex: user_story.txt)
│   └── user_story.txt
├── .gitignore            # Arquivo para ignorar arquivos/pastas no Git
├── README.md             # Este arquivo de documentação
└── requirements.txt      # Lista de dependências Python
```

#### Configuração
* ```config/config.resource```: Este arquivo é crucial e deve conter a URL base do OrangeHRM e quaisquer credenciais de login (usuário/senha) que seus testes utilizem. Recomenda-se fortemente usar variáveis para esses dados, como utilizado no código atual:
```
    *** Variables ***
    ${URL_PRINCIPAL}        https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
    ${BROWSER}              chrome
    ${ADMIN_USERNAME}       Admin
    ${ADMIN_PASSWORD}       admin123
```
#### Como Executar os Testes
**1. Navegue até a pasta raiz do projeto:**
```bash
    cd projeto_orange_hrm
```
**2. Para executar uma suíte de teste específica (ex: login válido):**
```bash
    robot -d reports tests/US-01-login-valido.robot
```
**3. Para executar todos os testes em uma pasta (ex: todos os testes na pasta ```tests```):**
```bash
robot -d reports tests/
```
- A opção ```-d reports``` criará uma pasta ```reports``` na raiz do projeto e salvará todos os logs, relatórios e screenshots.

#### Visualização dos Relatórios
Após a execução dos testes, os relatórios serão gerados na pasta ```reports/```. Você pode abri-los em seu navegador web:

* ```reports/report.html```: Relatório geral da execução, com resumo e resultados de cada teste.

* ```reports/log.html```: Log detalhado da execução, útil para depuração.