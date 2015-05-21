FROM nginx
MAINTAINER saymagic saymagic@163.com

RUN mkdir -p /nginx/www/love
COPY ./www /ngjnx/www/love
COPY ./config /etc/nginx/sites-enabled

EXPOSE 80

