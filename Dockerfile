FROM node:16

EXPOSE 3000

WORKDIR /usr/app

COPY ./ /usr/app

RUN npm install

RUN npm run build

CMD [ "node", ".output/server/index.mjs" ]