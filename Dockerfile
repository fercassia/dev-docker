# Base do arquivo
FROM node:22-alpine3.19

# Copiando o codigo fonte e o package.json para diretorio
# do container
COPY package.json /app/
COPY src /app/

# Indo para o diretorio do projeto
WORKDIR /app

# Baixando as dependencias doprojeto no container
RUN npm install

# Ultimo comando do arquivo
# rodar o servidor
CMD ["node","server.js"]