FROM node
#Pour s'assurer que le dossier soit créer
RUN mkdir /usr/src/app  

WORKDIR /usr/src/app

#Pour créer un environnement 
ENV PATH /usr/src/app/node_modules/.bin:$PATH

#on copie tout dans ce repertoire
COPY package*.json /usr/src/app

RUN npm install

#on copie également dans notre repertoire
COPY . /usr/src/app

EXPOSE 4000
CMD [ "npm", "start"]
