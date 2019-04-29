FROM nginx
MAINTAINER Jeongkyu Shin <jshin@lablup.com>

COPY ./build/bundle /usr/share/nginx/html
COPY ./config.js /usr/share/nginx/html/config.js
RUN rm /etc/nginx/conf.d/default.conf
COPY ./docker_build/nginx-site.conf /etc/nginx/conf.d/default.conf
