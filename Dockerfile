FROM ubuntu

MAINTAINER Mauricio

RUN apt-get update
RUN apt-get install -y nodejs
COPY web_server.js web_server.js
CMD ["nodejs", "web_server.js"]
