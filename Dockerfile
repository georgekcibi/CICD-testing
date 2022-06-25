FROM ubuntu:20.04

RUN apt update && apt-get -y install tzdata && apt-get -y install curl

RUN apt-get -y install nginx

WORKDIR /var/www/html

RUN rm -rf *

ADD index.html .

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
