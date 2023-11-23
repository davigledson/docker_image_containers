FROM node
# : - versao

#pasta de trabalho
WORKDIR /app
# esta copiando esse arquivo para o diretorio app
COPY package*.json . 

RUN npm install
# copia tudo para o container
COPY  . .
# expondo a porta 3000
EXPOSE 3000

# comando que inicializar a aplicacao
# aceita parametros em lista
CMD [ "node","app.js" ]

# -frag -t nomear a image na hora da criação
# docker build -t meunode_diferente:minhatagdiferente

#comando para inicair o container
# docker run  --name meu-container -d -p 8080:80 minha-imagem

# container interativo
# docker start -i <nome_container>

# renomeia a imagem
# docker tag <id da imagem> <novo nome da imagem>
# docker tag <id da imagem> <novo nome da imagem:tag da imagem>
# docker pull <nome da imagem:tag dela - versao nova ou antiga por exemplo>
# docker rmi <nome_da_imagem>

# COMANDOS PARA INSPECIONAR
# docker inspect nome-da-imagem OU nome-do-container

# docker stats
