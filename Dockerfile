# Base do arquivo
FROM node:20 AS build

WORKDIR /app

COPY package*.json ./ 

RUN npm install
RUN npm ci --only=production && npm cache clean --force

COPY . .

FROM node:20-alpine3.19 AS prod

WORKDIR /app

COPY --from=build /app/node_modules ./node_modules
COPY --from=build /app/src  /app/src

EXPOSE 4000

CMD ["node","/app/src/server.js"]