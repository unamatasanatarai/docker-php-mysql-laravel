Installs docker for php7, mysql 5.7, nginx, composer (available globally)

```
docker-compose up
```

and navigate to http://127.0.0.1:8181
and navigate to https://127.0.0.1:8182

Database is persisted inside `_docker/mysql_data/`

if you need more, have at it with the following commands:
```
docker-compose exec app bash
docker-compose exec app composer install
docker-compose exec app php artisan migrate
docker-compose exec web bash
docker-compose exec mysql bash
```

once in bash, you may install php extensions like so:
```
docker-php-ext-install exif mysql
```

You may wish to generate your own certificate.
```
cd _docker
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout nginx.key -out nginx.crt
```
