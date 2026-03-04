# MySQL_lab

Ambiente de prática para desenvolvimento e aprimoramento de habilidades em SQL e modelagem relacional utilizando MySQL.

Objetivo
Este projeto foi criado para praticar comandos SQL em um ambiente controlado, simulando um cenário real de banco de dados relacional.

Foram aplicados conceitos como:
- Modelagem de banco de dados
- Normalização
- Integridade referencial
- Regras de negócio implementadas via restrições
- Consultas analíticas com JOIN e agregações
- Manipulação de dados (INSERT, UPDATE, DELETE)

Ambiente Utilizado
- Oracle VM VirtualBox (máquina virtual)
- MySQL instalado localmente na VM
- Visual Studio Code para organização e versionamento dos scripts SQL
- Git e GitHub para controle de versão

O uso da máquina virtual permite simular um ambiente isolado de desenvolvimento, aproximando a prática de um cenário profissional.

Estrutura do Projeto

mysql_lab/
`database_schema.sql` → Criação das tabelas e restrições
`triggers.sql` → Restrições
`sample_data.sql` → Dados fictícios para testes
`queries.sql` → Consultas e análises realizadas
`updates.sql` → Manipulação e atualização de dados
`README.md` → Documentação do projeto

Cenário Modelado
Banco de dados relacional simulando um ambiente de vendas (e-commerce), contendo:
- Clientes
- Categorias
- Produtos
- Pedidos
- Itens do Pedido

A modelagem foi estruturada para evitar redundância e garantir consistência de dados.

Projeto em Evolução Contínua
Este banco de dados é utilizado como laboratório contínuo de prática e aprimoramento em SQL.
Novas implementações, testes e melhorias estruturais são realizadas conforme avanço nos estudos e na aplicação de conceitos mais complexos.
Funcionalidades e estruturas mais avançadas desenvolvidas a partir deste ambiente poderão ser documentadas separadamente em projetos específicos.
