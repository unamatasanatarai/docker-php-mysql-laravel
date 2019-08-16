FROM nginx:latest

ADD ./vhost.conf /etc/nginx/conf.d/default.conf
RUN sed -i -e 's/http {/\http {\nclient_max_body_size 64m;/g' /etc/nginx/nginx.conf

COPY ./nginx.crt /etc/ssl/
COPY ./nginx.key /etc/ssl
