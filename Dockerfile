# Use the official Node.js image as a base image
FROM node:18-alpine

# Defina o diretório de trabalho no container
WORKDIR /usr/src/app

# Copie os arquivos de configuração da aplicação
COPY package*.json ./

# Instale as dependências
RUN npm install --production

COPY . .

RUN npm run build

# Copie os arquivos da aplicação para o container


# Expõe a porta 3000 para acessar a aplicação no navegador
EXPOSE 3000

# Inicializa a aplicação com suporte a hot reload
CMD ["npm", "run", "start"]
