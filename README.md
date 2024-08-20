# Docker Build e Publish Images

Projeto __simples__ criado __apenas para estudos sobre conteiners, virtualização e docker e pipelines__. Com objetivo de entender a criação de imagens, container, subir imagem no Docker hub e criar uma pipelina para rodar de forma automatica.

#### Informações sobre estudos:

> [TechWorld With Nana. Docker Crash Course for Absolute Beginners. Youtube, fev. 2023](https://www.youtube.com/watch?v=pg19Z8LL06w)

> [Komalminhas. A step-by-step guide to Build And Push Your Own Docker Images To DockerHub. Medium, ago. 2023](https://medium.com/@komalminhas.96/a-step-by-step-guide-to-build-and-push-your-own-docker-images-to-dockerhub-709963d4a8bc)

## Instalação projeto
- Rode o comando para baixar a imagem do projeto `docker pull fercassia/dev-docker:latest`
- Rode o comando para criar e iniciar o container na porta 3000 (mesma porta do servidor do projeto)`docker run -d -p 3000:3000 fercassia/dev-docker`
- Clone o projeto `https://github.com/fercassia/dev-docker.git`
- Entre na pasta e divirta-se

## Tecnologias utilizadas no Desenvolvimento

- Node.js - [NVM Windows v20.15.0](https://github.com/coreybutler/nvm-windows)
- Express - [4.19.2](https://www.npmjs.com/package/express)

## Arquitetura

- `src`: Diretório responsável por armazenar arquivos de serviços.
    
- `.gitignore`: Arquivo responsável por armazenar arquivos/diretórios para serem ignorados ao subir para o repositório (p.ex: node_modules).

- `package.json`: Arquivo responsável por armazenar as dependências do projeto.

- `.github/workflows`: Diretorio responsável por armazenar os arquivos yaml referente a pipelines para automatizar o processo de build

- `Dockerfile`: Arquivo responsável configurar a imagem da aplicação

## Comandos adicionais
- Rode o comando para pausar o containner `docker stop {{containerId}}`
- Rode o comando para iniciar o container já criado `docker start {{containerId}}`

