# BUILD: docker build -t epfldojo/fantastic-pancake .
# RUN: docker run -t --name edfp -p 3000:8000 epfldojo/fantastic-pancake
# DEBUG: docker exec -it edfp bash
FROM ubuntu
MAINTAINER Mauricio

RUN apt-get update
RUN apt-get install -y nodejs git
RUN git clone https://github.com/epfl-dojo/fantastic-pancake.git
WORKDIR /fantastic-pancake
CMD ["nodejs", "web_server.js"]
EXPOSE 8000
