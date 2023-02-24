FROM node:19-bullseye

RUN mkdir /app

WORKDIR /app

#COPY . /app
COPY build /app/build
COPY src /app/src
COPY .* /app/
COPY package.json /app/package.json
COPY package-lock.json /app/package-lock.json
COPY run.sh /app/run.sh
#RUN npm install

CMD "/app/run.sh"