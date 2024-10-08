FROM node:20-alpine

ENV PORT=5000 \
    DB_USER='postgres' \
    DB_HOST='' \
    DB_NAME='postgres' \
    DB_PASSWORD='' \
    DB_PORT=5432

EXPOSE 5000

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . .
RUN npm install

CMD ["node", "index.js"]

