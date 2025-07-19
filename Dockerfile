FROM node:lts-buster
RUN git clone https://github.com/pakebijja/RIKA-XMD-v2
WORKDIR /root/ikJawad
RUN npm install && npm install -g pm2 || yarn install --network-concurrency 1
COPY . .
EXPOSE 9090
CMD ["npm", "start"]
