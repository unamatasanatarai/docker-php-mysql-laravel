FROM mysql:5.7

RUN sed -i -e 's/skip-name-resolve/#skip-name-resolve/g' /etc/mysql/conf.d/docker.cnf
