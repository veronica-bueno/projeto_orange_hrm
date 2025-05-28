# projeto_orange_hrm
Repositório para projeto final de curso QA Requisitado, com automatização do sistema web Orange HRM utilizando o Robot Framework e SeleniumLibrary.

Estrutura do projeto:

├── config/
│   └── config.resource         # Arquivo com configurações globais (URL base, browser, credenciais)
├── resources/
│   ├── US-01-login-valido.resource    # Keywords para o teste de login válido
│   ├── US-02-login-incorreto.resource # Keywords para o teste de login incorreto
│   ├── us-03-login-campos-obrigatorios.resource # Keywords para o teste de campos obrigatórios no login
│   ├── US-04-logout.resource          # Keywords para o teste de logout
│   ├── US-05-dashboard.resource       # Keywords para o teste do dashboard
│   ├── US-06-cadastrar-usuario.resource # Keywords para o teste de cadastro de usuário
│   └── US-07-deletar-usuario.resource # Keywords para o teste de deletar usuário
|── tests/
│   ├── US-1-login-valido.robot        # Testes de login com credenciais válidas
|   ├── US-02-login-incorreto.robot     # Testes de login com credenciais incorretas
|   ├── us-03-login-campos-obrigatorios.robot # Testes de campos obrigatórios no login
|   ├── us-04-logout.robot             # Testes de logout
|   ├── us-05-dashboard.robot          # Testes da tela de Dashboard
|   ├── us-06-cadastrar-usuario.robot  # Testes de cadastro de usuário
|   └── us-07-deletar-usuarios.robot   # Testes de deletar usuário
|── user_story/
|   ├── user_story.txt  # User Story e Critérios de aceitação
└── README.md                   # Este arquivo