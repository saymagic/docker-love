FROM ubuntu:14.04
MAINTAINER saymagic saymagic@163.com

RUN apt-get update
RUN apt-get install -y nginx
RUN mkdir /etc/nginx/sites-enabled/
COPY ./www /usr/share/nginx/html/love
RUN service nginx start
EXPOSE 80

