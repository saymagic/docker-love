FROM nginx
MAINTAINER saymagic saymagic@163.com

RUN mkdir -p /usr/share/nginx/www
COPY ./www /usr/share/nginx/www
COPY ./config/server /etc/nginx/sites-enabled
RUN rm /etc/nginx/sites-enabled/default
EXPOSE 80

