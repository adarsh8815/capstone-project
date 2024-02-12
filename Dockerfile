FROM node:latest

RUN mkdir -p /node-multiple-env
WORKDIR /node-multiple-env
COPY package.json /node-multiple-env/package.json
COPY package-lock.json /node-multiple-env/package-lock.json
RUN npm install
RUN npm install -g env-cmd
RUN npm install -g http-errors
COPY . /node-multiple-env
EXPOSE 3001
CMD [ "npm", "start" ]
