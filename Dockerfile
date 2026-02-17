FROM node:latest

EXPOSE 5000

WORKDIR /app

COPY . .

RUN apt update -y &&\
    chmod +x index.js &&\
    npm install 

CMD ["npm", "start"]
