FROM ubuntu

MAINTAINER Mauricio

RUN apt-get update
RUN apt-get install -y nodejs git
RUN git clone https://github.com/epfl-dojo/fantastic-pancake.git
WORKDIR /fantastic-pancake
CMD ["nodejs", "web_server.js"]
