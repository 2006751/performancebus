# Performance Bus

![GitHub repo size](https://img.shields.io/github/repo-size/performancebus/README-template?style=for-the-badge)
![GitHub language count](https://img.shields.io/github/languages/count/performancebus/README-template?style=for-the-badge)
![GitHub forks](https://img.shields.io/github/forks/performancebus/README-template?style=for-the-badge)

<img src="https://github.com/2006751/performancebus/blob/main/imagem-pb.jpg" alt="Performance BUS">

Performance Bus: Projeto Integrador Univesp 202101

## Performance Bus. Sistema de análise e monitoramento da empresa de ônibus que opera em Mairiporã/SP. 
Trata-se de um sistema exemplo para demostração do projeto integrador da Univesp 2021

### Tecnologias utilizadas
* Java 11
* Spring boot
* Spring data jpa
* Spring security
* Swagger 
* HAL
* JSON
* Rest
* Maven
* React.js
* Banco de Dados relacional (multi repositório)
* Git

### Ajustes e melhorias

O projeto ainda está em desenvolvimento e as próximas atualizações serão voltadas nas seguintes tarefas:

- [x] Estrutura inicial do backend da aplicação

- [x] Criação do banco de dados 

- [x] Desenvolvimento das entidades de banco de dados

- [x] Criação dos serviços no backend para consultar, alterar, deletar e consultar as entidades
	- [x] Login
	- [x] Usuarios
	- [x] Veículos
	- [x] Viagens
	- [x] Eventos
	- [x] Roteiros

- [ ] Documentação funcional

- [x] Estrutura inicial do frontend da aplicação

- [x] Desenvolvimento da autenticação e autorização da aplicação
	- [x] Login
	- [x] CORS
	- [x] Menu

- [x] Desenvolvimento do frontend para persistência das entidades de acordo com os serviços do backend
	- [x] Usuarios
	- [x] Veículos
	- [x] Viagens
	- [x] Eventos
	- [x] Roteiros
	- [ ] Gráficos

- [x] Documentação técnica

- [x] Arquivo README.md com explicação detalhada da instalação da aplicação.

- [ ] Testes funcionais


## 💻 Pré-requisitos

Antes de começar, verifique se você atendeu aos seguintes requisitos:
* Você tem uma máquina `<Windows / Linux / Mac>`.
* Você instalou o J[ava ]1(https://www.oracle.com/java/technologies/downloads) 1 ou superior.
* Você instalou o M[aven ]3(https://maven.apache.org/) .6 ou superior.
* Você instalou o n[pm ]6(https://www.npmjs.com/package/npm) .9 ou superior.
* VocÃª instalou um cliente [git] (https://git-scm.com/downloads).
* VocÃª instalou um SGBD como o [MySql] (https://www.mysql.com/downloads/), [Oracle] (https://www.oracle.com/br/downloads/), [Postgres] (https://www.postgresql.org/download/), etc.
* Você tenha um usuário válido no [github] (http://www.github.com).
* Você leu `este guia`.

## 🚀 Instalando o <performancebus>

Para instalar o <nome_do_projeto>, siga estas etapas:

* clone este repositório:
```
git clone git@github.com:<seu_usuário>/performancebus.git
```

* Crie um banco de dados a partir do SGDB da sua escolha. Por exemplo, para o MySQL utilize o comando abaixo no MySQL Command Line Client:
```
create database performancebus
```

* Configure a conexão com o banco de dados editando o arquivo application.properties. Edite as propriedades abaixo conforme o endereço do seu SGBD, usuário e senha.

```
spring.datasource.url=jdbc:mysql://<endereço-do-seu-banco>:<porta>/performancebus?useTimezone=true&serverTimezone=America/Sao_Paulo
spring.datasource.username=<usuário-do-banco>
spring.datasource.password=<senha-do-usuário-do-banco>
spring.datasource.driverClassName=com.mysql.jdbc.Driver
spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.MySQL8Dialect
```


* execute o maven para atualizar as dependências do backend:
```
/<diretório-do-projeto>/backend> mvn clean install
```

* execute o npm para atualizar as dependências do frontend:
```
/<diretório-do-projeto>/frontend> npm install --force
```

	
	
## ☕ Usando <nome_do_projeto>

Este é um projeto que utiliza o spring-boot e react.js. Para utilizá-lo siga estas etapas:

* Inicie o backend
```
/<diretório-do-projeto>/frontend>mvn spring-boot:run
```

Verifique se está funcionando acessando esta URL

```
http://127.0.0.1:8080
```

* Inicie o frontend
```
/<diretório-do-projeto>/frontend>npm start
```

Verifique se está funcionando acessando esta URL

```
http://127.0.0.1:3000
```

Este projeto foi criado visando o uso de serviços REST. Todos os serviços, com sua documentação e uso consta na URL

```
http://localhost:8080/swagger-ui/
```


Um usuário inicial, administrador do projeto, será criado automaticamente assim que o backend do projeto terminar de iniciar.
```
Usuário: admin
```
```
Senha: admin123
```

## 📫 Contribuindo para <nome_do_projeto>
<!---Se o seu README for longo ou se você tiver algum processo ou etapas específicas que deseja que os contribuidores sigam, considere a criação de um arquivo CONTRIBUTING.md separado--->
Para contribuir com <nome_do_projeto>, siga estas etapas:

1. Bifurque este repositório.
2. Crie um branch: `git checkout -b <nome_branch>`.
3. Faça suas alterações e confirme-as: `git commit -m '<mensagem_commit>'`
4. Envie para o branch original: `git push origin <nome_do_projeto> / <local>`
5. Crie a solicitação de pull.

Como alternativa, consulte a documentação do GitHub em [como criar uma solicitação pull](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/creating-a-pull-request).

## 🤝 Colaboradores

* Abel Cordeiro dos Santos, 2009228
* Alessandro Bezerra Aizawa, 1821764
* Gualberto Lepiane de Oliveira, 2003225
* Leonardo Sales Sena, 2014208
* Robson Luis Ferreira dos Santos, 2006751


Esse projeto está sob licença. Veja o arquivo [LICENÇA](LICENSE.md) para mais detalhes.

[⬆ Voltar ao topo](#nome-do-projeto)<br>
