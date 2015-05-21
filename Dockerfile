FROM ubuntu:14.04
MAINTAINER saymagic saymagic@163.com

RUN apt-get update
RUN apt-get install -y nginx
RUN mkdir -p /usr/share/nginx/www
COPY ./www /usr/share/nginx/www
COPY ./config /etc/nginx/sites-enabled
RUN rm /etc/nginx/sites-enabled/default
RUN service nginx start
EXPOSE 80

