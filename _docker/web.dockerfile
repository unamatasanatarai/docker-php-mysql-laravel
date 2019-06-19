FROM nginx:latest

ADD ./_docker/vhost.conf /etc/nginx/conf.d/default.conf
RUN sed -i -e 's/http {/\http {\nclient_max_body_size 64m;/g' /etc/nginx/nginx.conf

COPY ./_docker/nginx.crt /etc/ssl/
COPY ./_docker/nginx.key /etc/ssl
